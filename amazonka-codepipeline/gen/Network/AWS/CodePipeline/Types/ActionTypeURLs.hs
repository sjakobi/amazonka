{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeURLs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeURLs where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Returns information about URLs for web pages that display to customers as links on the pipeline view, such as an external configuration page for the action type.
--
--
--
-- /See:/ 'actionTypeURLs' smart constructor.
data ActionTypeURLs = ActionTypeURLs'
  { _atuExecutionURLTemplate ::
      !(Maybe Text),
    _atuEntityURLTemplate :: !(Maybe Text),
    _atuRevisionURLTemplate :: !(Maybe Text),
    _atuConfigurationURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionTypeURLs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atuExecutionURLTemplate' - The link to an execution page for the action type in progress. For example, for a CodeDeploy action, this link is shown on the pipeline view page in the CodePipeline console, and it links to a CodeDeploy status page.
--
-- * 'atuEntityURLTemplate' - The URL returned to the CodePipeline console that provides a deep link to the resources of the external system, such as a status page. This link is provided as part of the action display in the pipeline.
--
-- * 'atuRevisionURLTemplate' - The URL returned to the CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.
--
-- * 'atuConfigurationURL' - The URL returned to the CodePipeline console that contains a link to the page where customers can configure the external action.
actionTypeURLs ::
  ActionTypeURLs
actionTypeURLs =
  ActionTypeURLs'
    { _atuExecutionURLTemplate = Nothing,
      _atuEntityURLTemplate = Nothing,
      _atuRevisionURLTemplate = Nothing,
      _atuConfigurationURL = Nothing
    }

-- | The link to an execution page for the action type in progress. For example, for a CodeDeploy action, this link is shown on the pipeline view page in the CodePipeline console, and it links to a CodeDeploy status page.
atuExecutionURLTemplate :: Lens' ActionTypeURLs (Maybe Text)
atuExecutionURLTemplate = lens _atuExecutionURLTemplate (\s a -> s {_atuExecutionURLTemplate = a})

-- | The URL returned to the CodePipeline console that provides a deep link to the resources of the external system, such as a status page. This link is provided as part of the action display in the pipeline.
atuEntityURLTemplate :: Lens' ActionTypeURLs (Maybe Text)
atuEntityURLTemplate = lens _atuEntityURLTemplate (\s a -> s {_atuEntityURLTemplate = a})

-- | The URL returned to the CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.
atuRevisionURLTemplate :: Lens' ActionTypeURLs (Maybe Text)
atuRevisionURLTemplate = lens _atuRevisionURLTemplate (\s a -> s {_atuRevisionURLTemplate = a})

-- | The URL returned to the CodePipeline console that contains a link to the page where customers can configure the external action.
atuConfigurationURL :: Lens' ActionTypeURLs (Maybe Text)
atuConfigurationURL = lens _atuConfigurationURL (\s a -> s {_atuConfigurationURL = a})

instance FromJSON ActionTypeURLs where
  parseJSON =
    withObject
      "ActionTypeURLs"
      ( \x ->
          ActionTypeURLs'
            <$> (x .:? "executionUrlTemplate")
            <*> (x .:? "entityUrlTemplate")
            <*> (x .:? "revisionUrlTemplate")
            <*> (x .:? "configurationUrl")
      )

instance Hashable ActionTypeURLs

instance NFData ActionTypeURLs

instance ToJSON ActionTypeURLs where
  toJSON ActionTypeURLs' {..} =
    object
      ( catMaybes
          [ ("executionUrlTemplate" .=)
              <$> _atuExecutionURLTemplate,
            ("entityUrlTemplate" .=) <$> _atuEntityURLTemplate,
            ("revisionUrlTemplate" .=)
              <$> _atuRevisionURLTemplate,
            ("configurationUrl" .=) <$> _atuConfigurationURL
          ]
      )
