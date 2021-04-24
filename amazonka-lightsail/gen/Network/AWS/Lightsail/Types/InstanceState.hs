{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceState where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the virtual private server (or /instance/ ) status.
--
--
--
-- /See:/ 'instanceState' smart constructor.
data InstanceState = InstanceState'
  { _isCode ::
      !(Maybe Int),
    _isName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isCode' - The status code for the instance.
--
-- * 'isName' - The state of the instance (e.g., @running@ or @pending@ ).
instanceState ::
  InstanceState
instanceState =
  InstanceState'
    { _isCode = Nothing,
      _isName = Nothing
    }

-- | The status code for the instance.
isCode :: Lens' InstanceState (Maybe Int)
isCode = lens _isCode (\s a -> s {_isCode = a})

-- | The state of the instance (e.g., @running@ or @pending@ ).
isName :: Lens' InstanceState (Maybe Text)
isName = lens _isName (\s a -> s {_isName = a})

instance FromJSON InstanceState where
  parseJSON =
    withObject
      "InstanceState"
      ( \x ->
          InstanceState' <$> (x .:? "code") <*> (x .:? "name")
      )

instance Hashable InstanceState

instance NFData InstanceState
