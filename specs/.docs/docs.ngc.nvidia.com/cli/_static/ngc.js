// A band-aid to address <dt><code><kbd></kbd>...
// from sphinx-argparse when a command does not
// have any required or optional arguments.
async function _deleteEmptyKbd()
{
    try
    {
        const collection = document.getElementsByTagName("kbd")
        for (let i = collection.length - 1; i > -1; i--)
        {
            let kbd = collection.item(i)
            if (kbd.innerHTML.length < 1) {
                kbd.parentNode.removeChild(kbd)
            }
        }
    }
    catch (e)
    {
        console.log("warning: failed to remove zero-length kbd elements:", e)
    }
}

// wait until the page is loaded to modify the DOM
window.addEventListener("load", _deleteEmptyKbd)
