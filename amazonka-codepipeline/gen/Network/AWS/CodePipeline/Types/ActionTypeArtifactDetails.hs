{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about parameters for artifacts associated with the action type, such as the minimum and maximum artifacts allowed.
--
--
--
-- /See:/ 'actionTypeArtifactDetails' smart constructor.
data ActionTypeArtifactDetails = ActionTypeArtifactDetails'
  { _atadMinimumCount ::
      !Nat,
    _atadMaximumCount ::
      !Nat
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActionTypeArtifactDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atadMinimumCount' - The minimum number of artifacts that can be used with the action type. For example, you should specify a minimum and maximum of zero input artifacts for an action type with a category of @source@ .
--
-- * 'atadMaximumCount' - The maximum number of artifacts that can be used with the actiontype. For example, you should specify a minimum and maximum of zero input artifacts for an action type with a category of @source@ .
actionTypeArtifactDetails ::
  -- | 'atadMinimumCount'
  Natural ->
  -- | 'atadMaximumCount'
  Natural ->
  ActionTypeArtifactDetails
actionTypeArtifactDetails
  pMinimumCount_
  pMaximumCount_ =
    ActionTypeArtifactDetails'
      { _atadMinimumCount =
          _Nat # pMinimumCount_,
        _atadMaximumCount = _Nat # pMaximumCount_
      }

-- | The minimum number of artifacts that can be used with the action type. For example, you should specify a minimum and maximum of zero input artifacts for an action type with a category of @source@ .
atadMinimumCount :: Lens' ActionTypeArtifactDetails Natural
atadMinimumCount = lens _atadMinimumCount (\s a -> s {_atadMinimumCount = a}) . _Nat

-- | The maximum number of artifacts that can be used with the actiontype. For example, you should specify a minimum and maximum of zero input artifacts for an action type with a category of @source@ .
atadMaximumCount :: Lens' ActionTypeArtifactDetails Natural
atadMaximumCount = lens _atadMaximumCount (\s a -> s {_atadMaximumCount = a}) . _Nat

instance FromJSON ActionTypeArtifactDetails where
  parseJSON =
    withObject
      "ActionTypeArtifactDetails"
      ( \x ->
          ActionTypeArtifactDetails'
            <$> (x .: "minimumCount") <*> (x .: "maximumCount")
      )

instance Hashable ActionTypeArtifactDetails

instance NFData ActionTypeArtifactDetails

instance ToJSON ActionTypeArtifactDetails where
  toJSON ActionTypeArtifactDetails' {..} =
    object
      ( catMaybes
          [ Just ("minimumCount" .= _atadMinimumCount),
            Just ("maximumCount" .= _atadMaximumCount)
          ]
      )
