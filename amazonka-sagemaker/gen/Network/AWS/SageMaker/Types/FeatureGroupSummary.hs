{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.FeatureGroupStatus
import Network.AWS.SageMaker.Types.OfflineStoreStatus

-- | The name, Arn, @CreationTime@ , @FeatureGroup@ values, @LastUpdatedTime@ and @EnableOnlineStorage@ status of a @FeatureGroup@ .
--
--
--
-- /See:/ 'featureGroupSummary' smart constructor.
data FeatureGroupSummary = FeatureGroupSummary'
  { _fgsFeatureGroupStatus ::
      !(Maybe FeatureGroupStatus),
    _fgsOfflineStoreStatus ::
      !(Maybe OfflineStoreStatus),
    _fgsFeatureGroupName :: !Text,
    _fgsFeatureGroupARN :: !Text,
    _fgsCreationTime :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FeatureGroupSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgsFeatureGroupStatus' - The status of a FeatureGroup. The status can be any of the following: @Creating@ , @Created@ , @CreateFail@ , @Deleting@ or @DetailFail@ .
--
-- * 'fgsOfflineStoreStatus' - Notifies you if replicating data into the @OfflineStore@ has failed. Returns either: @Active@ or @Blocked@ .
--
-- * 'fgsFeatureGroupName' - The name of @FeatureGroup@ .
--
-- * 'fgsFeatureGroupARN' - Unique identifier for the @FeatureGroup@ .
--
-- * 'fgsCreationTime' - A timestamp indicating the time of creation time of the @FeatureGroup@ .
featureGroupSummary ::
  -- | 'fgsFeatureGroupName'
  Text ->
  -- | 'fgsFeatureGroupARN'
  Text ->
  -- | 'fgsCreationTime'
  UTCTime ->
  FeatureGroupSummary
featureGroupSummary
  pFeatureGroupName_
  pFeatureGroupARN_
  pCreationTime_ =
    FeatureGroupSummary'
      { _fgsFeatureGroupStatus =
          Nothing,
        _fgsOfflineStoreStatus = Nothing,
        _fgsFeatureGroupName = pFeatureGroupName_,
        _fgsFeatureGroupARN = pFeatureGroupARN_,
        _fgsCreationTime = _Time # pCreationTime_
      }

-- | The status of a FeatureGroup. The status can be any of the following: @Creating@ , @Created@ , @CreateFail@ , @Deleting@ or @DetailFail@ .
fgsFeatureGroupStatus :: Lens' FeatureGroupSummary (Maybe FeatureGroupStatus)
fgsFeatureGroupStatus = lens _fgsFeatureGroupStatus (\s a -> s {_fgsFeatureGroupStatus = a})

-- | Notifies you if replicating data into the @OfflineStore@ has failed. Returns either: @Active@ or @Blocked@ .
fgsOfflineStoreStatus :: Lens' FeatureGroupSummary (Maybe OfflineStoreStatus)
fgsOfflineStoreStatus = lens _fgsOfflineStoreStatus (\s a -> s {_fgsOfflineStoreStatus = a})

-- | The name of @FeatureGroup@ .
fgsFeatureGroupName :: Lens' FeatureGroupSummary Text
fgsFeatureGroupName = lens _fgsFeatureGroupName (\s a -> s {_fgsFeatureGroupName = a})

-- | Unique identifier for the @FeatureGroup@ .
fgsFeatureGroupARN :: Lens' FeatureGroupSummary Text
fgsFeatureGroupARN = lens _fgsFeatureGroupARN (\s a -> s {_fgsFeatureGroupARN = a})

-- | A timestamp indicating the time of creation time of the @FeatureGroup@ .
fgsCreationTime :: Lens' FeatureGroupSummary UTCTime
fgsCreationTime = lens _fgsCreationTime (\s a -> s {_fgsCreationTime = a}) . _Time

instance FromJSON FeatureGroupSummary where
  parseJSON =
    withObject
      "FeatureGroupSummary"
      ( \x ->
          FeatureGroupSummary'
            <$> (x .:? "FeatureGroupStatus")
            <*> (x .:? "OfflineStoreStatus")
            <*> (x .: "FeatureGroupName")
            <*> (x .: "FeatureGroupArn")
            <*> (x .: "CreationTime")
      )

instance Hashable FeatureGroupSummary

instance NFData FeatureGroupSummary
