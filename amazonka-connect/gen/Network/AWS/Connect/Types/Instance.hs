{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Instance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Instance where

import Network.AWS.Connect.Types.DirectoryType
import Network.AWS.Connect.Types.InstanceStatus
import Network.AWS.Connect.Types.InstanceStatusReason
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Amazon Connect instance.
--
--
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
  { _iInstanceAlias ::
      !(Maybe (Sensitive Text)),
    _iServiceRole :: !(Maybe Text),
    _iOutboundCallsEnabled :: !(Maybe Bool),
    _iARN :: !(Maybe Text),
    _iId :: !(Maybe Text),
    _iInstanceStatus :: !(Maybe InstanceStatus),
    _iIdentityManagementType :: !(Maybe DirectoryType),
    _iCreatedTime :: !(Maybe POSIX),
    _iInboundCallsEnabled :: !(Maybe Bool),
    _iStatusReason :: !(Maybe InstanceStatusReason)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInstanceAlias' - The alias of instance.
--
-- * 'iServiceRole' - The service role of the instance.
--
-- * 'iOutboundCallsEnabled' - Whether outbound calls are enabled.
--
-- * 'iARN' - The Amazon Resource Name (ARN) of the instance.
--
-- * 'iId' - The identifier of the Amazon Connect instance.
--
-- * 'iInstanceStatus' - The state of the instance.
--
-- * 'iIdentityManagementType' - The identity management type.
--
-- * 'iCreatedTime' - When the instance was created.
--
-- * 'iInboundCallsEnabled' - Whether inbound calls are enabled.
--
-- * 'iStatusReason' - Relevant details why the instance was not successfully created.
instance' ::
  Instance
instance' =
  Instance'
    { _iInstanceAlias = Nothing,
      _iServiceRole = Nothing,
      _iOutboundCallsEnabled = Nothing,
      _iARN = Nothing,
      _iId = Nothing,
      _iInstanceStatus = Nothing,
      _iIdentityManagementType = Nothing,
      _iCreatedTime = Nothing,
      _iInboundCallsEnabled = Nothing,
      _iStatusReason = Nothing
    }

-- | The alias of instance.
iInstanceAlias :: Lens' Instance (Maybe Text)
iInstanceAlias = lens _iInstanceAlias (\s a -> s {_iInstanceAlias = a}) . mapping _Sensitive

-- | The service role of the instance.
iServiceRole :: Lens' Instance (Maybe Text)
iServiceRole = lens _iServiceRole (\s a -> s {_iServiceRole = a})

-- | Whether outbound calls are enabled.
iOutboundCallsEnabled :: Lens' Instance (Maybe Bool)
iOutboundCallsEnabled = lens _iOutboundCallsEnabled (\s a -> s {_iOutboundCallsEnabled = a})

-- | The Amazon Resource Name (ARN) of the instance.
iARN :: Lens' Instance (Maybe Text)
iARN = lens _iARN (\s a -> s {_iARN = a})

-- | The identifier of the Amazon Connect instance.
iId :: Lens' Instance (Maybe Text)
iId = lens _iId (\s a -> s {_iId = a})

-- | The state of the instance.
iInstanceStatus :: Lens' Instance (Maybe InstanceStatus)
iInstanceStatus = lens _iInstanceStatus (\s a -> s {_iInstanceStatus = a})

-- | The identity management type.
iIdentityManagementType :: Lens' Instance (Maybe DirectoryType)
iIdentityManagementType = lens _iIdentityManagementType (\s a -> s {_iIdentityManagementType = a})

-- | When the instance was created.
iCreatedTime :: Lens' Instance (Maybe UTCTime)
iCreatedTime = lens _iCreatedTime (\s a -> s {_iCreatedTime = a}) . mapping _Time

-- | Whether inbound calls are enabled.
iInboundCallsEnabled :: Lens' Instance (Maybe Bool)
iInboundCallsEnabled = lens _iInboundCallsEnabled (\s a -> s {_iInboundCallsEnabled = a})

-- | Relevant details why the instance was not successfully created.
iStatusReason :: Lens' Instance (Maybe InstanceStatusReason)
iStatusReason = lens _iStatusReason (\s a -> s {_iStatusReason = a})

instance FromJSON Instance where
  parseJSON =
    withObject
      "Instance"
      ( \x ->
          Instance'
            <$> (x .:? "InstanceAlias")
            <*> (x .:? "ServiceRole")
            <*> (x .:? "OutboundCallsEnabled")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "InstanceStatus")
            <*> (x .:? "IdentityManagementType")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "InboundCallsEnabled")
            <*> (x .:? "StatusReason")
      )

instance Hashable Instance

instance NFData Instance
