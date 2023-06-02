$(document).on('ready turbolinks:load', () => {

    // Init sortable.
    document.querySelectorAll('.js-sortable').forEach(function (elem) {
        if (Boolean(elem.jsSortableInitialized) === false) {
            Sortable.create(elem, {
                handle: '.sortable-handle',
                animation: 150,
            });
            elem.jsSortableInitialized = true;
        }
    });
});

// Init tinymce.
$(document).on('turbolinks:before-cache', () => {
    console.log(`tinymce: unloading`)
    // Saves all contents
    // tinyMCE.triggerSave();
    tinymce.remove()
});

// ihp:load is from helpers.js

// TODO: implement https://codepen.io/speedygonzales77/pen/bzMrqB
// more info that doesnt help:
// - https://www.tiny.cloud/docs/tinymce/6/save/
// - https://github.com/tinymce/tinymce/issues/2584#issuecomment-289315519

$(document).on('ihp:load', () => {
    const tinymceElements = document.querySelectorAll('textarea[data-tinymce=true]')
    console.log(`tinymce: applying on`, tinymceElements)
    tinymceElements.forEach(function (element) {
        if (element.required) {
            // An invalid form control with name='body' is not focusable.
            throw new Error('submitting form will throw error, remove required')
        }
        // setTimeout(() => {
        //     tinymce.init({
        //         target: element,
        //     });
        // }, 0);
    });

    setTimeout(() => {
        tinymce.init({
            selector: "textarea[data-tinymce=true]",
        });
    }, 0);

});
