{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.QueryExecutionContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.QueryExecutionContext where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The database and data catalog context in which the query execution occurs.
--
--
--
-- /See:/ 'queryExecutionContext' smart constructor.
data QueryExecutionContext = QueryExecutionContext'
  { _qecCatalog ::
      !(Maybe Text),
    _qecDatabase ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'QueryExecutionContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qecCatalog' - The name of the data catalog used in the query execution.
--
-- * 'qecDatabase' - The name of the database used in the query execution.
queryExecutionContext ::
  QueryExecutionContext
queryExecutionContext =
  QueryExecutionContext'
    { _qecCatalog = Nothing,
      _qecDatabase = Nothing
    }

-- | The name of the data catalog used in the query execution.
qecCatalog :: Lens' QueryExecutionContext (Maybe Text)
qecCatalog = lens _qecCatalog (\s a -> s {_qecCatalog = a})

-- | The name of the database used in the query execution.
qecDatabase :: Lens' QueryExecutionContext (Maybe Text)
qecDatabase = lens _qecDatabase (\s a -> s {_qecDatabase = a})

instance FromJSON QueryExecutionContext where
  parseJSON =
    withObject
      "QueryExecutionContext"
      ( \x ->
          QueryExecutionContext'
            <$> (x .:? "Catalog") <*> (x .:? "Database")
      )

instance Hashable QueryExecutionContext

instance NFData QueryExecutionContext

instance ToJSON QueryExecutionContext where
  toJSON QueryExecutionContext' {..} =
    object
      ( catMaybes
          [ ("Catalog" .=) <$> _qecCatalog,
            ("Database" .=) <$> _qecDatabase
          ]
      )
