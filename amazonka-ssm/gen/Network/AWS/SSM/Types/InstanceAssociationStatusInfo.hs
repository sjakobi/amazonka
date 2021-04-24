{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InstanceAssociationStatusInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstanceAssociationStatusInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.InstanceAssociationOutputURL

-- | Status information about the instance association.
--
--
--
-- /See:/ 'instanceAssociationStatusInfo' smart constructor.
data InstanceAssociationStatusInfo = InstanceAssociationStatusInfo'
  { _iasiStatus ::
      !( Maybe
           Text
       ),
    _iasiInstanceId ::
      !( Maybe
           Text
       ),
    _iasiDetailedStatus ::
      !( Maybe
           Text
       ),
    _iasiName ::
      !( Maybe
           Text
       ),
    _iasiOutputURL ::
      !( Maybe
           InstanceAssociationOutputURL
       ),
    _iasiAssociationId ::
      !( Maybe
           Text
       ),
    _iasiAssociationName ::
      !( Maybe
           Text
       ),
    _iasiExecutionDate ::
      !( Maybe
           POSIX
       ),
    _iasiExecutionSummary ::
      !( Maybe
           Text
       ),
    _iasiAssociationVersion ::
      !( Maybe
           Text
       ),
    _iasiDocumentVersion ::
      !( Maybe
           Text
       ),
    _iasiErrorCode ::
      !( Maybe
           Text
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

-- | Creates a value of 'InstanceAssociationStatusInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iasiStatus' - Status information about the instance association.
--
-- * 'iasiInstanceId' - The instance ID where the association was created.
--
-- * 'iasiDetailedStatus' - Detailed status information about the instance association.
--
-- * 'iasiName' - The name of the association.
--
-- * 'iasiOutputURL' - A URL for an S3 bucket where you want to store the results of this request.
--
-- * 'iasiAssociationId' - The association ID.
--
-- * 'iasiAssociationName' - The name of the association applied to the instance.
--
-- * 'iasiExecutionDate' - The date the instance association ran.
--
-- * 'iasiExecutionSummary' - Summary information about association execution.
--
-- * 'iasiAssociationVersion' - The version of the association applied to the instance.
--
-- * 'iasiDocumentVersion' - The association document versions.
--
-- * 'iasiErrorCode' - An error code returned by the request to create the association.
instanceAssociationStatusInfo ::
  InstanceAssociationStatusInfo
instanceAssociationStatusInfo =
  InstanceAssociationStatusInfo'
    { _iasiStatus =
        Nothing,
      _iasiInstanceId = Nothing,
      _iasiDetailedStatus = Nothing,
      _iasiName = Nothing,
      _iasiOutputURL = Nothing,
      _iasiAssociationId = Nothing,
      _iasiAssociationName = Nothing,
      _iasiExecutionDate = Nothing,
      _iasiExecutionSummary = Nothing,
      _iasiAssociationVersion = Nothing,
      _iasiDocumentVersion = Nothing,
      _iasiErrorCode = Nothing
    }

-- | Status information about the instance association.
iasiStatus :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiStatus = lens _iasiStatus (\s a -> s {_iasiStatus = a})

-- | The instance ID where the association was created.
iasiInstanceId :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiInstanceId = lens _iasiInstanceId (\s a -> s {_iasiInstanceId = a})

-- | Detailed status information about the instance association.
iasiDetailedStatus :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiDetailedStatus = lens _iasiDetailedStatus (\s a -> s {_iasiDetailedStatus = a})

-- | The name of the association.
iasiName :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiName = lens _iasiName (\s a -> s {_iasiName = a})

-- | A URL for an S3 bucket where you want to store the results of this request.
iasiOutputURL :: Lens' InstanceAssociationStatusInfo (Maybe InstanceAssociationOutputURL)
iasiOutputURL = lens _iasiOutputURL (\s a -> s {_iasiOutputURL = a})

-- | The association ID.
iasiAssociationId :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiAssociationId = lens _iasiAssociationId (\s a -> s {_iasiAssociationId = a})

-- | The name of the association applied to the instance.
iasiAssociationName :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiAssociationName = lens _iasiAssociationName (\s a -> s {_iasiAssociationName = a})

-- | The date the instance association ran.
iasiExecutionDate :: Lens' InstanceAssociationStatusInfo (Maybe UTCTime)
iasiExecutionDate = lens _iasiExecutionDate (\s a -> s {_iasiExecutionDate = a}) . mapping _Time

-- | Summary information about association execution.
iasiExecutionSummary :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiExecutionSummary = lens _iasiExecutionSummary (\s a -> s {_iasiExecutionSummary = a})

-- | The version of the association applied to the instance.
iasiAssociationVersion :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiAssociationVersion = lens _iasiAssociationVersion (\s a -> s {_iasiAssociationVersion = a})

-- | The association document versions.
iasiDocumentVersion :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiDocumentVersion = lens _iasiDocumentVersion (\s a -> s {_iasiDocumentVersion = a})

-- | An error code returned by the request to create the association.
iasiErrorCode :: Lens' InstanceAssociationStatusInfo (Maybe Text)
iasiErrorCode = lens _iasiErrorCode (\s a -> s {_iasiErrorCode = a})

instance FromJSON InstanceAssociationStatusInfo where
  parseJSON =
    withObject
      "InstanceAssociationStatusInfo"
      ( \x ->
          InstanceAssociationStatusInfo'
            <$> (x .:? "Status")
            <*> (x .:? "InstanceId")
            <*> (x .:? "DetailedStatus")
            <*> (x .:? "Name")
            <*> (x .:? "OutputUrl")
            <*> (x .:? "AssociationId")
            <*> (x .:? "AssociationName")
            <*> (x .:? "ExecutionDate")
            <*> (x .:? "ExecutionSummary")
            <*> (x .:? "AssociationVersion")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "ErrorCode")
      )

instance Hashable InstanceAssociationStatusInfo

instance NFData InstanceAssociationStatusInfo
