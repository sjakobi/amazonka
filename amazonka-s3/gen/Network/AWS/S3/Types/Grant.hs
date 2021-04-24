{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Grant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Grant where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Grantee
import Network.AWS.S3.Types.Permission

-- | Container for grant information.
--
--
--
-- /See:/ 'grant' smart constructor.
data Grant = Grant'
  { _gGrantee :: !(Maybe Grantee),
    _gPermission :: !(Maybe Permission)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Grant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gGrantee' - The person being granted permissions.
--
-- * 'gPermission' - Specifies the permission given to the grantee.
grant ::
  Grant
grant =
  Grant' {_gGrantee = Nothing, _gPermission = Nothing}

-- | The person being granted permissions.
gGrantee :: Lens' Grant (Maybe Grantee)
gGrantee = lens _gGrantee (\s a -> s {_gGrantee = a})

-- | Specifies the permission given to the grantee.
gPermission :: Lens' Grant (Maybe Permission)
gPermission = lens _gPermission (\s a -> s {_gPermission = a})

instance FromXML Grant where
  parseXML x =
    Grant'
      <$> (x .@? "Grantee") <*> (x .@? "Permission")

instance Hashable Grant

instance NFData Grant

instance ToXML Grant where
  toXML Grant' {..} =
    mconcat
      [ "Grantee" @= _gGrantee,
        "Permission" @= _gPermission
      ]
