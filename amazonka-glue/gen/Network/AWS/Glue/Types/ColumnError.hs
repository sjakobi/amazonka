{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ColumnError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ColumnError where

import Network.AWS.Glue.Types.ErrorDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Encapsulates a column name that failed and the reason for failure.
--
--
--
-- /See:/ 'columnError' smart constructor.
data ColumnError = ColumnError'
  { _ceColumnName ::
      !(Maybe Text),
    _ceError :: !(Maybe ErrorDetail)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColumnError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceColumnName' - The name of the column that failed.
--
-- * 'ceError' - An error message with the reason for the failure of an operation.
columnError ::
  ColumnError
columnError =
  ColumnError'
    { _ceColumnName = Nothing,
      _ceError = Nothing
    }

-- | The name of the column that failed.
ceColumnName :: Lens' ColumnError (Maybe Text)
ceColumnName = lens _ceColumnName (\s a -> s {_ceColumnName = a})

-- | An error message with the reason for the failure of an operation.
ceError :: Lens' ColumnError (Maybe ErrorDetail)
ceError = lens _ceError (\s a -> s {_ceError = a})

instance FromJSON ColumnError where
  parseJSON =
    withObject
      "ColumnError"
      ( \x ->
          ColumnError'
            <$> (x .:? "ColumnName") <*> (x .:? "Error")
      )

instance Hashable ColumnError

instance NFData ColumnError
