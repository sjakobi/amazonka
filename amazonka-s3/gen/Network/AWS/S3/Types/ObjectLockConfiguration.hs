{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ObjectLockConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectLockConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ObjectLockEnabled
import Network.AWS.S3.Types.ObjectLockRule

-- | The container element for Object Lock configuration parameters.
--
--
--
-- /See:/ 'objectLockConfiguration' smart constructor.
data ObjectLockConfiguration = ObjectLockConfiguration'
  { _olcRule ::
      !(Maybe ObjectLockRule),
    _olcObjectLockEnabled ::
      !( Maybe
           ObjectLockEnabled
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

-- | Creates a value of 'ObjectLockConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcRule' - The Object Lock rule in place for the specified object.
--
-- * 'olcObjectLockEnabled' - Indicates whether this bucket has an Object Lock configuration enabled.
objectLockConfiguration ::
  ObjectLockConfiguration
objectLockConfiguration =
  ObjectLockConfiguration'
    { _olcRule = Nothing,
      _olcObjectLockEnabled = Nothing
    }

-- | The Object Lock rule in place for the specified object.
olcRule :: Lens' ObjectLockConfiguration (Maybe ObjectLockRule)
olcRule = lens _olcRule (\s a -> s {_olcRule = a})

-- | Indicates whether this bucket has an Object Lock configuration enabled.
olcObjectLockEnabled :: Lens' ObjectLockConfiguration (Maybe ObjectLockEnabled)
olcObjectLockEnabled = lens _olcObjectLockEnabled (\s a -> s {_olcObjectLockEnabled = a})

instance FromXML ObjectLockConfiguration where
  parseXML x =
    ObjectLockConfiguration'
      <$> (x .@? "Rule") <*> (x .@? "ObjectLockEnabled")

instance Hashable ObjectLockConfiguration

instance NFData ObjectLockConfiguration

instance ToXML ObjectLockConfiguration where
  toXML ObjectLockConfiguration' {..} =
    mconcat
      [ "Rule" @= _olcRule,
        "ObjectLockEnabled" @= _olcObjectLockEnabled
      ]
