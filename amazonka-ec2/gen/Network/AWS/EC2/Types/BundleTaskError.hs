{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.BundleTaskError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BundleTaskError where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an error for 'BundleInstance' .
--
--
--
-- /See:/ 'bundleTaskError' smart constructor.
data BundleTaskError = BundleTaskError'
  { _bteMessage ::
      !(Maybe Text),
    _bteCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BundleTaskError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bteMessage' - The error message.
--
-- * 'bteCode' - The error code.
bundleTaskError ::
  BundleTaskError
bundleTaskError =
  BundleTaskError'
    { _bteMessage = Nothing,
      _bteCode = Nothing
    }

-- | The error message.
bteMessage :: Lens' BundleTaskError (Maybe Text)
bteMessage = lens _bteMessage (\s a -> s {_bteMessage = a})

-- | The error code.
bteCode :: Lens' BundleTaskError (Maybe Text)
bteCode = lens _bteCode (\s a -> s {_bteCode = a})

instance FromXML BundleTaskError where
  parseXML x =
    BundleTaskError'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable BundleTaskError

instance NFData BundleTaskError
