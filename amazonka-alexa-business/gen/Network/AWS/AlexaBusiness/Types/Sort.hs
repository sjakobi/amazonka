{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Sort
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Sort where

import Network.AWS.AlexaBusiness.Types.SortValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing a sort criteria.
--
--
--
-- /See:/ 'sort' smart constructor.
data Sort = Sort'
  { _sorKey :: !Text,
    _sorValue :: !SortValue
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Sort' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sorKey' - The sort key of a sort object.
--
-- * 'sorValue' - The sort value of a sort object.
sort ::
  -- | 'sorKey'
  Text ->
  -- | 'sorValue'
  SortValue ->
  Sort
sort pKey_ pValue_ =
  Sort' {_sorKey = pKey_, _sorValue = pValue_}

-- | The sort key of a sort object.
sorKey :: Lens' Sort Text
sorKey = lens _sorKey (\s a -> s {_sorKey = a})

-- | The sort value of a sort object.
sorValue :: Lens' Sort SortValue
sorValue = lens _sorValue (\s a -> s {_sorValue = a})

instance Hashable Sort

instance NFData Sort

instance ToJSON Sort where
  toJSON Sort' {..} =
    object
      ( catMaybes
          [ Just ("Key" .= _sorKey),
            Just ("Value" .= _sorValue)
          ]
      )
