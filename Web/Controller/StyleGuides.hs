module Web.Controller.StyleGuides where

import Web.Controller.Prelude
import Web.View.StyleGuides.Index

instance Controller StyleGuidesController where
    -- StyleGuidesAction would produce /StyleGuides
    -- But we need /StyleGuide
    action StyleGuideAction = render IndexView
