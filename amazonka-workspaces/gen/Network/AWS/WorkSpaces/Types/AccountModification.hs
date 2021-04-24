{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.AccountModification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.AccountModification where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.DedicatedTenancyModificationStateEnum
import Network.AWS.WorkSpaces.Types.DedicatedTenancySupportResultEnum

-- | Describes a modification to the configuration of Bring Your Own License (BYOL) for the specified account.
--
--
--
-- /See:/ 'accountModification' smart constructor.
data AccountModification = AccountModification'
  { _amDedicatedTenancySupport ::
      !( Maybe
           DedicatedTenancySupportResultEnum
       ),
    _amStartTime :: !(Maybe POSIX),
    _amDedicatedTenancyManagementCidrRange ::
      !(Maybe Text),
    _amModificationState ::
      !( Maybe
           DedicatedTenancyModificationStateEnum
       ),
    _amErrorMessage ::
      !(Maybe Text),
    _amErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountModification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amDedicatedTenancySupport' - The status of BYOL (whether BYOL is being enabled or disabled).
--
-- * 'amStartTime' - The timestamp when the modification of the BYOL configuration was started.
--
-- * 'amDedicatedTenancyManagementCidrRange' - The IP address range, specified as an IPv4 CIDR block, for the management network interface used for the account.
--
-- * 'amModificationState' - The state of the modification to the configuration of BYOL.
--
-- * 'amErrorMessage' - The text of the error message that is returned if the configuration of BYOL cannot be modified.
--
-- * 'amErrorCode' - The error code that is returned if the configuration of BYOL cannot be modified.
accountModification ::
  AccountModification
accountModification =
  AccountModification'
    { _amDedicatedTenancySupport =
        Nothing,
      _amStartTime = Nothing,
      _amDedicatedTenancyManagementCidrRange = Nothing,
      _amModificationState = Nothing,
      _amErrorMessage = Nothing,
      _amErrorCode = Nothing
    }

-- | The status of BYOL (whether BYOL is being enabled or disabled).
amDedicatedTenancySupport :: Lens' AccountModification (Maybe DedicatedTenancySupportResultEnum)
amDedicatedTenancySupport = lens _amDedicatedTenancySupport (\s a -> s {_amDedicatedTenancySupport = a})

-- | The timestamp when the modification of the BYOL configuration was started.
amStartTime :: Lens' AccountModification (Maybe UTCTime)
amStartTime = lens _amStartTime (\s a -> s {_amStartTime = a}) . mapping _Time

-- | The IP address range, specified as an IPv4 CIDR block, for the management network interface used for the account.
amDedicatedTenancyManagementCidrRange :: Lens' AccountModification (Maybe Text)
amDedicatedTenancyManagementCidrRange = lens _amDedicatedTenancyManagementCidrRange (\s a -> s {_amDedicatedTenancyManagementCidrRange = a})

-- | The state of the modification to the configuration of BYOL.
amModificationState :: Lens' AccountModification (Maybe DedicatedTenancyModificationStateEnum)
amModificationState = lens _amModificationState (\s a -> s {_amModificationState = a})

-- | The text of the error message that is returned if the configuration of BYOL cannot be modified.
amErrorMessage :: Lens' AccountModification (Maybe Text)
amErrorMessage = lens _amErrorMessage (\s a -> s {_amErrorMessage = a})

-- | The error code that is returned if the configuration of BYOL cannot be modified.
amErrorCode :: Lens' AccountModification (Maybe Text)
amErrorCode = lens _amErrorCode (\s a -> s {_amErrorCode = a})

instance FromJSON AccountModification where
  parseJSON =
    withObject
      "AccountModification"
      ( \x ->
          AccountModification'
            <$> (x .:? "DedicatedTenancySupport")
            <*> (x .:? "StartTime")
            <*> (x .:? "DedicatedTenancyManagementCidrRange")
            <*> (x .:? "ModificationState")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "ErrorCode")
      )

instance Hashable AccountModification

instance NFData AccountModification
