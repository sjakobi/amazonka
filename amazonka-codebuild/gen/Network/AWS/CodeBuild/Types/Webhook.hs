{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.Webhook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.Webhook where

import Network.AWS.CodeBuild.Types.WebhookBuildType
import Network.AWS.CodeBuild.Types.WebhookFilter
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a webhook that connects repository events to a build project in AWS CodeBuild.
--
--
--
-- /See:/ 'webhook' smart constructor.
data Webhook = Webhook'
  { _wBranchFilter ::
      !(Maybe Text),
    _wPayloadURL :: !(Maybe Text),
    _wFilterGroups :: !(Maybe [[WebhookFilter]]),
    _wSecret :: !(Maybe Text),
    _wBuildType :: !(Maybe WebhookBuildType),
    _wUrl :: !(Maybe Text),
    _wLastModifiedSecret :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Webhook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wBranchFilter' - A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
--
-- * 'wPayloadURL' - The AWS CodeBuild endpoint where webhook events are sent.
--
-- * 'wFilterGroups' - An array of arrays of @WebhookFilter@ objects used to determine which webhooks are triggered. At least one @WebhookFilter@ in the array must specify @EVENT@ as its @type@ .  For a build to be triggered, at least one filter group in the @filterGroups@ array must pass. For a filter group to pass, each of its filters must pass.
--
-- * 'wSecret' - The secret token of the associated repository.
--
-- * 'wBuildType' - Specifies the type of build this webhook will trigger.
--
-- * 'wUrl' - The URL to the webhook.
--
-- * 'wLastModifiedSecret' - A timestamp that indicates the last time a repository's secret token was modified.
webhook ::
  Webhook
webhook =
  Webhook'
    { _wBranchFilter = Nothing,
      _wPayloadURL = Nothing,
      _wFilterGroups = Nothing,
      _wSecret = Nothing,
      _wBuildType = Nothing,
      _wUrl = Nothing,
      _wLastModifiedSecret = Nothing
    }

-- | A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
wBranchFilter :: Lens' Webhook (Maybe Text)
wBranchFilter = lens _wBranchFilter (\s a -> s {_wBranchFilter = a})

-- | The AWS CodeBuild endpoint where webhook events are sent.
wPayloadURL :: Lens' Webhook (Maybe Text)
wPayloadURL = lens _wPayloadURL (\s a -> s {_wPayloadURL = a})

-- | An array of arrays of @WebhookFilter@ objects used to determine which webhooks are triggered. At least one @WebhookFilter@ in the array must specify @EVENT@ as its @type@ .  For a build to be triggered, at least one filter group in the @filterGroups@ array must pass. For a filter group to pass, each of its filters must pass.
wFilterGroups :: Lens' Webhook [[WebhookFilter]]
wFilterGroups = lens _wFilterGroups (\s a -> s {_wFilterGroups = a}) . _Default . _Coerce

-- | The secret token of the associated repository.
wSecret :: Lens' Webhook (Maybe Text)
wSecret = lens _wSecret (\s a -> s {_wSecret = a})

-- | Specifies the type of build this webhook will trigger.
wBuildType :: Lens' Webhook (Maybe WebhookBuildType)
wBuildType = lens _wBuildType (\s a -> s {_wBuildType = a})

-- | The URL to the webhook.
wUrl :: Lens' Webhook (Maybe Text)
wUrl = lens _wUrl (\s a -> s {_wUrl = a})

-- | A timestamp that indicates the last time a repository's secret token was modified.
wLastModifiedSecret :: Lens' Webhook (Maybe UTCTime)
wLastModifiedSecret = lens _wLastModifiedSecret (\s a -> s {_wLastModifiedSecret = a}) . mapping _Time

instance FromJSON Webhook where
  parseJSON =
    withObject
      "Webhook"
      ( \x ->
          Webhook'
            <$> (x .:? "branchFilter")
            <*> (x .:? "payloadUrl")
            <*> (x .:? "filterGroups" .!= mempty)
            <*> (x .:? "secret")
            <*> (x .:? "buildType")
            <*> (x .:? "url")
            <*> (x .:? "lastModifiedSecret")
      )

instance Hashable Webhook

instance NFData Webhook
