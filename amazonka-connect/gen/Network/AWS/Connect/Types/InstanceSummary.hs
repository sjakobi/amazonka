{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.InstanceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceSummary where

import Network.AWS.Connect.Types.DirectoryType
import Network.AWS.Connect.Types.InstanceStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the instance.
--
--
--
-- /See:/ 'instanceSummary' smart constructor.
data InstanceSummary = InstanceSummary'
  { _isInstanceAlias ::
      !(Maybe (Sensitive Text)),
    _isServiceRole :: !(Maybe Text),
    _isOutboundCallsEnabled ::
      !(Maybe Bool),
    _isARN :: !(Maybe Text),
    _isId :: !(Maybe Text),
    _isInstanceStatus ::
      !(Maybe InstanceStatus),
    _isIdentityManagementType ::
      !(Maybe DirectoryType),
    _isCreatedTime :: !(Maybe POSIX),
    _isInboundCallsEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isInstanceAlias' - The alias of the instance.
--
-- * 'isServiceRole' - The service role of the instance.
--
-- * 'isOutboundCallsEnabled' - Whether outbound calls are enabled.
--
-- * 'isARN' - The Amazon Resource Name (ARN) of the instance.
--
-- * 'isId' - The identifier of the instance.
--
-- * 'isInstanceStatus' - The state of the instance.
--
-- * 'isIdentityManagementType' - The identity management type of the instance.
--
-- * 'isCreatedTime' - When the instance was created.
--
-- * 'isInboundCallsEnabled' - Whether inbound calls are enabled.
instanceSummary ::
  InstanceSummary
instanceSummary =
  InstanceSummary'
    { _isInstanceAlias = Nothing,
      _isServiceRole = Nothing,
      _isOutboundCallsEnabled = Nothing,
      _isARN = Nothing,
      _isId = Nothing,
      _isInstanceStatus = Nothing,
      _isIdentityManagementType = Nothing,
      _isCreatedTime = Nothing,
      _isInboundCallsEnabled = Nothing
    }

-- | The alias of the instance.
isInstanceAlias :: Lens' InstanceSummary (Maybe Text)
isInstanceAlias = lens _isInstanceAlias (\s a -> s {_isInstanceAlias = a}) . mapping _Sensitive

-- | The service role of the instance.
isServiceRole :: Lens' InstanceSummary (Maybe Text)
isServiceRole = lens _isServiceRole (\s a -> s {_isServiceRole = a})

-- | Whether outbound calls are enabled.
isOutboundCallsEnabled :: Lens' InstanceSummary (Maybe Bool)
isOutboundCallsEnabled = lens _isOutboundCallsEnabled (\s a -> s {_isOutboundCallsEnabled = a})

-- | The Amazon Resource Name (ARN) of the instance.
isARN :: Lens' InstanceSummary (Maybe Text)
isARN = lens _isARN (\s a -> s {_isARN = a})

-- | The identifier of the instance.
isId :: Lens' InstanceSummary (Maybe Text)
isId = lens _isId (\s a -> s {_isId = a})

-- | The state of the instance.
isInstanceStatus :: Lens' InstanceSummary (Maybe InstanceStatus)
isInstanceStatus = lens _isInstanceStatus (\s a -> s {_isInstanceStatus = a})

-- | The identity management type of the instance.
isIdentityManagementType :: Lens' InstanceSummary (Maybe DirectoryType)
isIdentityManagementType = lens _isIdentityManagementType (\s a -> s {_isIdentityManagementType = a})

-- | When the instance was created.
isCreatedTime :: Lens' InstanceSummary (Maybe UTCTime)
isCreatedTime = lens _isCreatedTime (\s a -> s {_isCreatedTime = a}) . mapping _Time

-- | Whether inbound calls are enabled.
isInboundCallsEnabled :: Lens' InstanceSummary (Maybe Bool)
isInboundCallsEnabled = lens _isInboundCallsEnabled (\s a -> s {_isInboundCallsEnabled = a})

instance FromJSON InstanceSummary where
  parseJSON =
    withObject
      "InstanceSummary"
      ( \x ->
          InstanceSummary'
            <$> (x .:? "InstanceAlias")
            <*> (x .:? "ServiceRole")
            <*> (x .:? "OutboundCallsEnabled")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "InstanceStatus")
            <*> (x .:? "IdentityManagementType")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "InboundCallsEnabled")
      )

instance Hashable InstanceSummary

instance NFData InstanceSummary
