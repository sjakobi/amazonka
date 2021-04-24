{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging.Types.ResourceTagMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.ResourceTagMapping where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroupsTagging.Types.ComplianceDetails
import Network.AWS.ResourceGroupsTagging.Types.Tag

-- | A list of resource ARNs and the tags (keys and values) that are associated with each.
--
--
--
-- /See:/ 'resourceTagMapping' smart constructor.
data ResourceTagMapping = ResourceTagMapping'
  { _rtmResourceARN ::
      !(Maybe Text),
    _rtmComplianceDetails ::
      !(Maybe ComplianceDetails),
    _rtmTags :: !(Maybe [Tag])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceTagMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtmResourceARN' - The ARN of the resource.
--
-- * 'rtmComplianceDetails' - Information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.
--
-- * 'rtmTags' - The tags that have been applied to one or more AWS resources.
resourceTagMapping ::
  ResourceTagMapping
resourceTagMapping =
  ResourceTagMapping'
    { _rtmResourceARN = Nothing,
      _rtmComplianceDetails = Nothing,
      _rtmTags = Nothing
    }

-- | The ARN of the resource.
rtmResourceARN :: Lens' ResourceTagMapping (Maybe Text)
rtmResourceARN = lens _rtmResourceARN (\s a -> s {_rtmResourceARN = a})

-- | Information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.
rtmComplianceDetails :: Lens' ResourceTagMapping (Maybe ComplianceDetails)
rtmComplianceDetails = lens _rtmComplianceDetails (\s a -> s {_rtmComplianceDetails = a})

-- | The tags that have been applied to one or more AWS resources.
rtmTags :: Lens' ResourceTagMapping [Tag]
rtmTags = lens _rtmTags (\s a -> s {_rtmTags = a}) . _Default . _Coerce

instance FromJSON ResourceTagMapping where
  parseJSON =
    withObject
      "ResourceTagMapping"
      ( \x ->
          ResourceTagMapping'
            <$> (x .:? "ResourceARN")
            <*> (x .:? "ComplianceDetails")
            <*> (x .:? "Tags" .!= mempty)
      )

instance Hashable ResourceTagMapping

instance NFData ResourceTagMapping
