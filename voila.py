voila mydir --VoilaConfiguration.extension_language_mapping='{".py": "python", ".jl": "julia", ".json": "Json", ".js": "JavaScript", ".ts": "TypeScript", ".jsp": "Servlet", ".css": "grid", ".html": "html5", ".php": "php", ".sql": "MySql"}'

def prelaunch_hook_function(req, notebook, cwd):
   """Do your stuffs here"""
   return notebook

def page_config_hook_function(current_page_config, **kwargs):
   """Modify the current_page_config"""
   return new_page_config

c.VoilaConfiguration.prelaunch_hook = hook_function
c.VoilaConfiguration.page_config_hook = page_config_hook

def parameterize_with_papermill(req, notebook, cwd):
    import tornado

    # Grab parameters
    parameters = req.get_argument("parameters", {})

    # try to convert to dict if not e.g. string/unicode
    if not isinstance(parameters, dict):
        try:
            parameters = tornado.escape.json_decode(parameters)
        except ValueError:
            parameters = None

    # if passed and a dict, use papermill to inject parameters
    if parameters and isinstance(parameters, dict):
        from papermill.parameterize import parameterize_notebook

        # setup for papermill
        #
        # these two blocks are done
        # to avoid triggering errors
        # in papermill's notebook
        # loading logic
        for cell in notebook.cells:
            if 'tags' not in cell.metadata:
                cell.metadata.tags = []
            if "papermill" not in notebook.metadata:
                notebook.metadata.papermill = {}

        # Parameterize with papermill
        return parameterize_notebook(notebook, parameters)


def page_config_hook(
   current_page_config: Dict[str, Any],
   base_url: str,
   settings: Dict[str, Any],
   log: Logger,
   voila_configuration: VoilaConfiguration,
   notebook_path: str
):
    page_config['fullLabextensionsUrl'] = '/home/ovni/htdocs/Site_Gostar_url' #'/custom/labextensions_url'#
    return page_config
    
    from voila.app import Voila
from voila.config import VoilaConfiguration

# customize config how you like
config = VoilaConfiguration('Like_DB.sql')

# set the prelaunch hook
config.prelaunch_hook = parameterize_with_papermill

# set the page config hook
config.page_config_hook = page_config_hook

# create a voila instance
app = Voila(Site_Gostar)

# set the config
app.voila_configuration = config

# launch
app.start(Site_Gostar)
