{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LifecyclePolicyPreviewResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LifecyclePolicyPreviewResult where

import Network.AWS.ECR.Types.LifecyclePolicyRuleAction
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The result of the lifecycle policy preview.
--
--
--
-- /See:/ 'lifecyclePolicyPreviewResult' smart constructor.
data LifecyclePolicyPreviewResult = LifecyclePolicyPreviewResult'
  { _lpprImageDigest ::
      !(Maybe Text),
    _lpprAppliedRulePriority ::
      !(Maybe Nat),
    _lpprImageTags ::
      !( Maybe
           [Text]
       ),
    _lpprAction ::
      !( Maybe
           LifecyclePolicyRuleAction
       ),
    _lpprImagePushedAt ::
      !( Maybe
           POSIX
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LifecyclePolicyPreviewResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpprImageDigest' - The @sha256@ digest of the image manifest.
--
-- * 'lpprAppliedRulePriority' - The priority of the applied rule.
--
-- * 'lpprImageTags' - The list of tags associated with this image.
--
-- * 'lpprAction' - The type of action to be taken.
--
-- * 'lpprImagePushedAt' - The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository.
lifecyclePolicyPreviewResult ::
  LifecyclePolicyPreviewResult
lifecyclePolicyPreviewResult =
  LifecyclePolicyPreviewResult'
    { _lpprImageDigest =
        Nothing,
      _lpprAppliedRulePriority = Nothing,
      _lpprImageTags = Nothing,
      _lpprAction = Nothing,
      _lpprImagePushedAt = Nothing
    }

-- | The @sha256@ digest of the image manifest.
lpprImageDigest :: Lens' LifecyclePolicyPreviewResult (Maybe Text)
lpprImageDigest = lens _lpprImageDigest (\s a -> s {_lpprImageDigest = a})

-- | The priority of the applied rule.
lpprAppliedRulePriority :: Lens' LifecyclePolicyPreviewResult (Maybe Natural)
lpprAppliedRulePriority = lens _lpprAppliedRulePriority (\s a -> s {_lpprAppliedRulePriority = a}) . mapping _Nat

-- | The list of tags associated with this image.
lpprImageTags :: Lens' LifecyclePolicyPreviewResult [Text]
lpprImageTags = lens _lpprImageTags (\s a -> s {_lpprImageTags = a}) . _Default . _Coerce

-- | The type of action to be taken.
lpprAction :: Lens' LifecyclePolicyPreviewResult (Maybe LifecyclePolicyRuleAction)
lpprAction = lens _lpprAction (\s a -> s {_lpprAction = a})

-- | The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository.
lpprImagePushedAt :: Lens' LifecyclePolicyPreviewResult (Maybe UTCTime)
lpprImagePushedAt = lens _lpprImagePushedAt (\s a -> s {_lpprImagePushedAt = a}) . mapping _Time

instance FromJSON LifecyclePolicyPreviewResult where
  parseJSON =
    withObject
      "LifecyclePolicyPreviewResult"
      ( \x ->
          LifecyclePolicyPreviewResult'
            <$> (x .:? "imageDigest")
            <*> (x .:? "appliedRulePriority")
            <*> (x .:? "imageTags" .!= mempty)
            <*> (x .:? "action")
            <*> (x .:? "imagePushedAt")
      )

instance Hashable LifecyclePolicyPreviewResult

instance NFData LifecyclePolicyPreviewResult
