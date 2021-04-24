{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AddressAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AddressAttribute where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PtrUpdateStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The attributes associated with an Elastic IP address.
--
--
--
-- /See:/ 'addressAttribute' smart constructor.
data AddressAttribute = AddressAttribute'
  { _aaPtrRecord ::
      !(Maybe Text),
    _aaPublicIP :: !(Maybe Text),
    _aaAllocationId :: !(Maybe Text),
    _aaPtrRecordUpdate ::
      !(Maybe PtrUpdateStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddressAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaPtrRecord' - The pointer (PTR) record for the IP address.
--
-- * 'aaPublicIP' - The public IP address.
--
-- * 'aaAllocationId' - [EC2-VPC] The allocation ID.
--
-- * 'aaPtrRecordUpdate' - The updated PTR record for the IP address.
addressAttribute ::
  AddressAttribute
addressAttribute =
  AddressAttribute'
    { _aaPtrRecord = Nothing,
      _aaPublicIP = Nothing,
      _aaAllocationId = Nothing,
      _aaPtrRecordUpdate = Nothing
    }

-- | The pointer (PTR) record for the IP address.
aaPtrRecord :: Lens' AddressAttribute (Maybe Text)
aaPtrRecord = lens _aaPtrRecord (\s a -> s {_aaPtrRecord = a})

-- | The public IP address.
aaPublicIP :: Lens' AddressAttribute (Maybe Text)
aaPublicIP = lens _aaPublicIP (\s a -> s {_aaPublicIP = a})

-- | [EC2-VPC] The allocation ID.
aaAllocationId :: Lens' AddressAttribute (Maybe Text)
aaAllocationId = lens _aaAllocationId (\s a -> s {_aaAllocationId = a})

-- | The updated PTR record for the IP address.
aaPtrRecordUpdate :: Lens' AddressAttribute (Maybe PtrUpdateStatus)
aaPtrRecordUpdate = lens _aaPtrRecordUpdate (\s a -> s {_aaPtrRecordUpdate = a})

instance FromXML AddressAttribute where
  parseXML x =
    AddressAttribute'
      <$> (x .@? "ptrRecord")
      <*> (x .@? "publicIp")
      <*> (x .@? "allocationId")
      <*> (x .@? "ptrRecordUpdate")

instance Hashable AddressAttribute

instance NFData AddressAttribute
