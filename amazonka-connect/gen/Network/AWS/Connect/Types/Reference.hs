{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Reference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Reference where

import Network.AWS.Connect.Types.ReferenceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A link that an agent selects to complete a given task. You can have up to 4,096 UTF-8 bytes across all references for a contact.
--
--
--
-- /See:/ 'reference' smart constructor.
data Reference = Reference'
  { _rValue :: !Text,
    _rType :: !ReferenceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Reference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rValue' - A formatted URL that displays to an agent in the Contact Control Panel (CCP)
--
-- * 'rType' - A valid URL.
reference ::
  -- | 'rValue'
  Text ->
  -- | 'rType'
  ReferenceType ->
  Reference
reference pValue_ pType_ =
  Reference' {_rValue = pValue_, _rType = pType_}

-- | A formatted URL that displays to an agent in the Contact Control Panel (CCP)
rValue :: Lens' Reference Text
rValue = lens _rValue (\s a -> s {_rValue = a})

-- | A valid URL.
rType :: Lens' Reference ReferenceType
rType = lens _rType (\s a -> s {_rType = a})

instance Hashable Reference

instance NFData Reference

instance ToJSON Reference where
  toJSON Reference' {..} =
    object
      ( catMaybes
          [Just ("Value" .= _rValue), Just ("Type" .= _rType)]
      )
