{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.Operation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.Operation where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.OperationStatus
import Network.AWS.Lightsail.Types.OperationType
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Prelude

-- | Describes the API operation.
--
--
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
  { _oOperationDetails ::
      !(Maybe Text),
    _oStatus :: !(Maybe OperationStatus),
    _oIsTerminal :: !(Maybe Bool),
    _oCreatedAt :: !(Maybe POSIX),
    _oId :: !(Maybe Text),
    _oResourceType :: !(Maybe ResourceType),
    _oStatusChangedAt :: !(Maybe POSIX),
    _oLocation :: !(Maybe ResourceLocation),
    _oResourceName :: !(Maybe Text),
    _oOperationType :: !(Maybe OperationType),
    _oErrorCode :: !(Maybe Text),
    _oErrorDetails :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOperationDetails' - Details about the operation (e.g., @Debian-1GB-Ohio-1@ ).
--
-- * 'oStatus' - The status of the operation.
--
-- * 'oIsTerminal' - A Boolean value indicating whether the operation is terminal.
--
-- * 'oCreatedAt' - The timestamp when the operation was initialized (e.g., @1479816991.349@ ).
--
-- * 'oId' - The ID of the operation.
--
-- * 'oResourceType' - The resource type.
--
-- * 'oStatusChangedAt' - The timestamp when the status was changed (e.g., @1479816991.349@ ).
--
-- * 'oLocation' - The AWS Region and Availability Zone.
--
-- * 'oResourceName' - The resource name.
--
-- * 'oOperationType' - The type of operation.
--
-- * 'oErrorCode' - The error code.
--
-- * 'oErrorDetails' - The error details.
operation ::
  Operation
operation =
  Operation'
    { _oOperationDetails = Nothing,
      _oStatus = Nothing,
      _oIsTerminal = Nothing,
      _oCreatedAt = Nothing,
      _oId = Nothing,
      _oResourceType = Nothing,
      _oStatusChangedAt = Nothing,
      _oLocation = Nothing,
      _oResourceName = Nothing,
      _oOperationType = Nothing,
      _oErrorCode = Nothing,
      _oErrorDetails = Nothing
    }

-- | Details about the operation (e.g., @Debian-1GB-Ohio-1@ ).
oOperationDetails :: Lens' Operation (Maybe Text)
oOperationDetails = lens _oOperationDetails (\s a -> s {_oOperationDetails = a})

-- | The status of the operation.
oStatus :: Lens' Operation (Maybe OperationStatus)
oStatus = lens _oStatus (\s a -> s {_oStatus = a})

-- | A Boolean value indicating whether the operation is terminal.
oIsTerminal :: Lens' Operation (Maybe Bool)
oIsTerminal = lens _oIsTerminal (\s a -> s {_oIsTerminal = a})

-- | The timestamp when the operation was initialized (e.g., @1479816991.349@ ).
oCreatedAt :: Lens' Operation (Maybe UTCTime)
oCreatedAt = lens _oCreatedAt (\s a -> s {_oCreatedAt = a}) . mapping _Time

-- | The ID of the operation.
oId :: Lens' Operation (Maybe Text)
oId = lens _oId (\s a -> s {_oId = a})

-- | The resource type.
oResourceType :: Lens' Operation (Maybe ResourceType)
oResourceType = lens _oResourceType (\s a -> s {_oResourceType = a})

-- | The timestamp when the status was changed (e.g., @1479816991.349@ ).
oStatusChangedAt :: Lens' Operation (Maybe UTCTime)
oStatusChangedAt = lens _oStatusChangedAt (\s a -> s {_oStatusChangedAt = a}) . mapping _Time

-- | The AWS Region and Availability Zone.
oLocation :: Lens' Operation (Maybe ResourceLocation)
oLocation = lens _oLocation (\s a -> s {_oLocation = a})

-- | The resource name.
oResourceName :: Lens' Operation (Maybe Text)
oResourceName = lens _oResourceName (\s a -> s {_oResourceName = a})

-- | The type of operation.
oOperationType :: Lens' Operation (Maybe OperationType)
oOperationType = lens _oOperationType (\s a -> s {_oOperationType = a})

-- | The error code.
oErrorCode :: Lens' Operation (Maybe Text)
oErrorCode = lens _oErrorCode (\s a -> s {_oErrorCode = a})

-- | The error details.
oErrorDetails :: Lens' Operation (Maybe Text)
oErrorDetails = lens _oErrorDetails (\s a -> s {_oErrorDetails = a})

instance FromJSON Operation where
  parseJSON =
    withObject
      "Operation"
      ( \x ->
          Operation'
            <$> (x .:? "operationDetails")
            <*> (x .:? "status")
            <*> (x .:? "isTerminal")
            <*> (x .:? "createdAt")
            <*> (x .:? "id")
            <*> (x .:? "resourceType")
            <*> (x .:? "statusChangedAt")
            <*> (x .:? "location")
            <*> (x .:? "resourceName")
            <*> (x .:? "operationType")
            <*> (x .:? "errorCode")
            <*> (x .:? "errorDetails")
      )

instance Hashable Operation

instance NFData Operation
