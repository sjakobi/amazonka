{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.StackSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.StackSummary where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.InstancesCount
import Network.AWS.Prelude

-- | Summarizes the number of layers, instances, and apps in a stack.
--
--
--
-- /See:/ 'stackSummary' smart constructor.
data StackSummary = StackSummary'
  { _sssStackId ::
      !(Maybe Text),
    _sssLayersCount :: !(Maybe Int),
    _sssARN :: !(Maybe Text),
    _sssName :: !(Maybe Text),
    _sssInstancesCount :: !(Maybe InstancesCount),
    _sssAppsCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StackSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssStackId' - The stack ID.
--
-- * 'sssLayersCount' - The number of layers.
--
-- * 'sssARN' - The stack's ARN.
--
-- * 'sssName' - The stack name.
--
-- * 'sssInstancesCount' - An @InstancesCount@ object with the number of instances in each status.
--
-- * 'sssAppsCount' - The number of apps.
stackSummary ::
  StackSummary
stackSummary =
  StackSummary'
    { _sssStackId = Nothing,
      _sssLayersCount = Nothing,
      _sssARN = Nothing,
      _sssName = Nothing,
      _sssInstancesCount = Nothing,
      _sssAppsCount = Nothing
    }

-- | The stack ID.
sssStackId :: Lens' StackSummary (Maybe Text)
sssStackId = lens _sssStackId (\s a -> s {_sssStackId = a})

-- | The number of layers.
sssLayersCount :: Lens' StackSummary (Maybe Int)
sssLayersCount = lens _sssLayersCount (\s a -> s {_sssLayersCount = a})

-- | The stack's ARN.
sssARN :: Lens' StackSummary (Maybe Text)
sssARN = lens _sssARN (\s a -> s {_sssARN = a})

-- | The stack name.
sssName :: Lens' StackSummary (Maybe Text)
sssName = lens _sssName (\s a -> s {_sssName = a})

-- | An @InstancesCount@ object with the number of instances in each status.
sssInstancesCount :: Lens' StackSummary (Maybe InstancesCount)
sssInstancesCount = lens _sssInstancesCount (\s a -> s {_sssInstancesCount = a})

-- | The number of apps.
sssAppsCount :: Lens' StackSummary (Maybe Int)
sssAppsCount = lens _sssAppsCount (\s a -> s {_sssAppsCount = a})

instance FromJSON StackSummary where
  parseJSON =
    withObject
      "StackSummary"
      ( \x ->
          StackSummary'
            <$> (x .:? "StackId")
            <*> (x .:? "LayersCount")
            <*> (x .:? "Arn")
            <*> (x .:? "Name")
            <*> (x .:? "InstancesCount")
            <*> (x .:? "AppsCount")
      )

instance Hashable StackSummary

instance NFData StackSummary
