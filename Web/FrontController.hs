module Web.FrontController where

import IHP.RouterPrelude
import Web.Controller.Prelude
import Web.View.Layout (defaultLayout)

-- Controller Imports
import Web.Controller.ImageStyle
import Web.Controller.LandingPages
import Web.Controller.ParagraphCtas
import Web.Controller.ParagraphQuotes
import Web.Controller.StyleGuides

instance FrontController WebApplication where
    controllers =
        [ startPage LandingPagesAction
        -- Generator Marker
        , parseRoute @ImageStyleController
        , parseRoute @LandingPagesController
        , parseRoute @ParagraphCtasController
        , parseRoute @ParagraphQuotesController
        , parseRoute @StyleGuidesController
        ]

instance InitControllerContext WebApplication where
    initContext = do
        setLayout defaultLayout
        initAutoRefresh
