{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.AWSAPICallAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.AWSAPICallAction where

import Network.AWS.GuardDuty.Types.DomainDetails
import Network.AWS.GuardDuty.Types.RemoteIPDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the API action.
--
--
--
-- /See:/ 'awsAPICallAction' smart constructor.
data AWSAPICallAction = AWSAPICallAction'
  { _aacaAPI ::
      !(Maybe Text),
    _aacaServiceName :: !(Maybe Text),
    _aacaDomainDetails ::
      !(Maybe DomainDetails),
    _aacaRemoteIPDetails ::
      !(Maybe RemoteIPDetails),
    _aacaCallerType :: !(Maybe Text),
    _aacaErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AWSAPICallAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacaAPI' - The AWS API name.
--
-- * 'aacaServiceName' - The AWS service name whose API was invoked.
--
-- * 'aacaDomainDetails' - The domain information for the AWS API call.
--
-- * 'aacaRemoteIPDetails' - The remote IP information of the connection that initiated the AWS API call.
--
-- * 'aacaCallerType' - The AWS API caller type.
--
-- * 'aacaErrorCode' - The error code of the failed AWS API action.
awsAPICallAction ::
  AWSAPICallAction
awsAPICallAction =
  AWSAPICallAction'
    { _aacaAPI = Nothing,
      _aacaServiceName = Nothing,
      _aacaDomainDetails = Nothing,
      _aacaRemoteIPDetails = Nothing,
      _aacaCallerType = Nothing,
      _aacaErrorCode = Nothing
    }

-- | The AWS API name.
aacaAPI :: Lens' AWSAPICallAction (Maybe Text)
aacaAPI = lens _aacaAPI (\s a -> s {_aacaAPI = a})

-- | The AWS service name whose API was invoked.
aacaServiceName :: Lens' AWSAPICallAction (Maybe Text)
aacaServiceName = lens _aacaServiceName (\s a -> s {_aacaServiceName = a})

-- | The domain information for the AWS API call.
aacaDomainDetails :: Lens' AWSAPICallAction (Maybe DomainDetails)
aacaDomainDetails = lens _aacaDomainDetails (\s a -> s {_aacaDomainDetails = a})

-- | The remote IP information of the connection that initiated the AWS API call.
aacaRemoteIPDetails :: Lens' AWSAPICallAction (Maybe RemoteIPDetails)
aacaRemoteIPDetails = lens _aacaRemoteIPDetails (\s a -> s {_aacaRemoteIPDetails = a})

-- | The AWS API caller type.
aacaCallerType :: Lens' AWSAPICallAction (Maybe Text)
aacaCallerType = lens _aacaCallerType (\s a -> s {_aacaCallerType = a})

-- | The error code of the failed AWS API action.
aacaErrorCode :: Lens' AWSAPICallAction (Maybe Text)
aacaErrorCode = lens _aacaErrorCode (\s a -> s {_aacaErrorCode = a})

instance FromJSON AWSAPICallAction where
  parseJSON =
    withObject
      "AWSAPICallAction"
      ( \x ->
          AWSAPICallAction'
            <$> (x .:? "api")
            <*> (x .:? "serviceName")
            <*> (x .:? "domainDetails")
            <*> (x .:? "remoteIpDetails")
            <*> (x .:? "callerType")
            <*> (x .:? "errorCode")
      )

instance Hashable AWSAPICallAction

instance NFData AWSAPICallAction
