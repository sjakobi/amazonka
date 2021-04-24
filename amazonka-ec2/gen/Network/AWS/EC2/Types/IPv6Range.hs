{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.IPv6Range
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.IPv6Range where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | [EC2-VPC only] Describes an IPv6 range.
--
--
--
-- /See:/ 'ipv6Range' smart constructor.
data IPv6Range = IPv6Range'
  { _iprCidrIPv6 ::
      !(Maybe Text),
    _iprDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IPv6Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iprCidrIPv6' - The IPv6 CIDR range. You can either specify a CIDR range or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.
--
-- * 'iprDescription' - A description for the security group rule that references this IPv6 address range. Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*
ipv6Range ::
  IPv6Range
ipv6Range =
  IPv6Range'
    { _iprCidrIPv6 = Nothing,
      _iprDescription = Nothing
    }

-- | The IPv6 CIDR range. You can either specify a CIDR range or a source security group, not both. To specify a single IPv6 address, use the /128 prefix length.
iprCidrIPv6 :: Lens' IPv6Range (Maybe Text)
iprCidrIPv6 = lens _iprCidrIPv6 (\s a -> s {_iprCidrIPv6 = a})

-- | A description for the security group rule that references this IPv6 address range. Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*
iprDescription :: Lens' IPv6Range (Maybe Text)
iprDescription = lens _iprDescription (\s a -> s {_iprDescription = a})

instance FromXML IPv6Range where
  parseXML x =
    IPv6Range'
      <$> (x .@? "cidrIpv6") <*> (x .@? "description")

instance Hashable IPv6Range

instance NFData IPv6Range

instance ToQuery IPv6Range where
  toQuery IPv6Range' {..} =
    mconcat
      [ "CidrIpv6" =: _iprCidrIPv6,
        "Description" =: _iprDescription
      ]
