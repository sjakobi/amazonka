{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LastError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LastError where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The last error that occurred for a VPC endpoint.
--
--
--
-- /See:/ 'lastError' smart constructor.
data LastError = LastError'
  { _leMessage ::
      !(Maybe Text),
    _leCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LastError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leMessage' - The error message for the VPC endpoint error.
--
-- * 'leCode' - The error code for the VPC endpoint error.
lastError ::
  LastError
lastError =
  LastError' {_leMessage = Nothing, _leCode = Nothing}

-- | The error message for the VPC endpoint error.
leMessage :: Lens' LastError (Maybe Text)
leMessage = lens _leMessage (\s a -> s {_leMessage = a})

-- | The error code for the VPC endpoint error.
leCode :: Lens' LastError (Maybe Text)
leCode = lens _leCode (\s a -> s {_leCode = a})

instance FromXML LastError where
  parseXML x =
    LastError' <$> (x .@? "message") <*> (x .@? "code")

instance Hashable LastError

instance NFData LastError
