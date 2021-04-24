{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TableVersionError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TableVersionError where

import Network.AWS.Glue.Types.ErrorDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An error record for table-version operations.
--
--
--
-- /See:/ 'tableVersionError' smart constructor.
data TableVersionError = TableVersionError'
  { _tveTableName ::
      !(Maybe Text),
    _tveErrorDetail ::
      !(Maybe ErrorDetail),
    _tveVersionId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableVersionError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tveTableName' - The name of the table in question.
--
-- * 'tveErrorDetail' - The details about the error.
--
-- * 'tveVersionId' - The ID value of the version in question. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
tableVersionError ::
  TableVersionError
tableVersionError =
  TableVersionError'
    { _tveTableName = Nothing,
      _tveErrorDetail = Nothing,
      _tveVersionId = Nothing
    }

-- | The name of the table in question.
tveTableName :: Lens' TableVersionError (Maybe Text)
tveTableName = lens _tveTableName (\s a -> s {_tveTableName = a})

-- | The details about the error.
tveErrorDetail :: Lens' TableVersionError (Maybe ErrorDetail)
tveErrorDetail = lens _tveErrorDetail (\s a -> s {_tveErrorDetail = a})

-- | The ID value of the version in question. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
tveVersionId :: Lens' TableVersionError (Maybe Text)
tveVersionId = lens _tveVersionId (\s a -> s {_tveVersionId = a})

instance FromJSON TableVersionError where
  parseJSON =
    withObject
      "TableVersionError"
      ( \x ->
          TableVersionError'
            <$> (x .:? "TableName")
            <*> (x .:? "ErrorDetail")
            <*> (x .:? "VersionId")
      )

instance Hashable TableVersionError

instance NFData TableVersionError
