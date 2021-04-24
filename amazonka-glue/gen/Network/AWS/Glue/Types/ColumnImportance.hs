{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ColumnImportance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ColumnImportance where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure containing the column name and column importance score for a column.
--
--
-- Column importance helps you understand how columns contribute to your model, by identifying which columns in your records are more important than others.
--
--
-- /See:/ 'columnImportance' smart constructor.
data ColumnImportance = ColumnImportance'
  { _ciImportance ::
      !(Maybe Double),
    _ciColumnName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColumnImportance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciImportance' - The column importance score for the column, as a decimal.
--
-- * 'ciColumnName' - The name of a column.
columnImportance ::
  ColumnImportance
columnImportance =
  ColumnImportance'
    { _ciImportance = Nothing,
      _ciColumnName = Nothing
    }

-- | The column importance score for the column, as a decimal.
ciImportance :: Lens' ColumnImportance (Maybe Double)
ciImportance = lens _ciImportance (\s a -> s {_ciImportance = a})

-- | The name of a column.
ciColumnName :: Lens' ColumnImportance (Maybe Text)
ciColumnName = lens _ciColumnName (\s a -> s {_ciColumnName = a})

instance FromJSON ColumnImportance where
  parseJSON =
    withObject
      "ColumnImportance"
      ( \x ->
          ColumnImportance'
            <$> (x .:? "Importance") <*> (x .:? "ColumnName")
      )

instance Hashable ColumnImportance

instance NFData ColumnImportance
