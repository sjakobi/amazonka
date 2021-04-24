{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.CreateConnectionBasicAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.CreateConnectionBasicAuthRequestParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the Basic authorization parameters to use for the connection.
--
--
--
-- /See:/ 'createConnectionBasicAuthRequestParameters' smart constructor.
data CreateConnectionBasicAuthRequestParameters = CreateConnectionBasicAuthRequestParameters'
  { _ccbarpUsername ::
      !Text,
    _ccbarpPassword ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateConnectionBasicAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccbarpUsername' - The user name to use for Basic authorization.
--
-- * 'ccbarpPassword' - The password associated with the user name to use for Basic authorization.
createConnectionBasicAuthRequestParameters ::
  -- | 'ccbarpUsername'
  Text ->
  -- | 'ccbarpPassword'
  Text ->
  CreateConnectionBasicAuthRequestParameters
createConnectionBasicAuthRequestParameters
  pUsername_
  pPassword_ =
    CreateConnectionBasicAuthRequestParameters'
      { _ccbarpUsername =
          pUsername_,
        _ccbarpPassword = pPassword_
      }

-- | The user name to use for Basic authorization.
ccbarpUsername :: Lens' CreateConnectionBasicAuthRequestParameters Text
ccbarpUsername = lens _ccbarpUsername (\s a -> s {_ccbarpUsername = a})

-- | The password associated with the user name to use for Basic authorization.
ccbarpPassword :: Lens' CreateConnectionBasicAuthRequestParameters Text
ccbarpPassword = lens _ccbarpPassword (\s a -> s {_ccbarpPassword = a})

instance
  Hashable
    CreateConnectionBasicAuthRequestParameters

instance
  NFData
    CreateConnectionBasicAuthRequestParameters

instance
  ToJSON
    CreateConnectionBasicAuthRequestParameters
  where
  toJSON
    CreateConnectionBasicAuthRequestParameters' {..} =
      object
        ( catMaybes
            [ Just ("Username" .= _ccbarpUsername),
              Just ("Password" .= _ccbarpPassword)
            ]
        )
