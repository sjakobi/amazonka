{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.Column
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.Column where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains metadata for a column in a table.
--
--
--
-- /See:/ 'column' smart constructor.
data Column = Column'
  { _cComment :: !(Maybe Text),
    _cType :: !(Maybe Text),
    _cName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cComment' - Optional information about the column.
--
-- * 'cType' - The data type of the column.
--
-- * 'cName' - The name of the column.
column ::
  -- | 'cName'
  Text ->
  Column
column pName_ =
  Column'
    { _cComment = Nothing,
      _cType = Nothing,
      _cName = pName_
    }

-- | Optional information about the column.
cComment :: Lens' Column (Maybe Text)
cComment = lens _cComment (\s a -> s {_cComment = a})

-- | The data type of the column.
cType :: Lens' Column (Maybe Text)
cType = lens _cType (\s a -> s {_cType = a})

-- | The name of the column.
cName :: Lens' Column Text
cName = lens _cName (\s a -> s {_cName = a})

instance FromJSON Column where
  parseJSON =
    withObject
      "Column"
      ( \x ->
          Column'
            <$> (x .:? "Comment")
            <*> (x .:? "Type")
            <*> (x .: "Name")
      )

instance Hashable Column

instance NFData Column
