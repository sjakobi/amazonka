{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaVersionNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaVersionNumber where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure containing the schema version information.
--
--
--
-- /See:/ 'schemaVersionNumber' smart constructor.
data SchemaVersionNumber = SchemaVersionNumber'
  { _svnLatestVersion ::
      !(Maybe Bool),
    _svnVersionNumber ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaVersionNumber' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svnLatestVersion' - The latest version available for the schema.
--
-- * 'svnVersionNumber' - The version number of the schema.
schemaVersionNumber ::
  SchemaVersionNumber
schemaVersionNumber =
  SchemaVersionNumber'
    { _svnLatestVersion = Nothing,
      _svnVersionNumber = Nothing
    }

-- | The latest version available for the schema.
svnLatestVersion :: Lens' SchemaVersionNumber (Maybe Bool)
svnLatestVersion = lens _svnLatestVersion (\s a -> s {_svnLatestVersion = a})

-- | The version number of the schema.
svnVersionNumber :: Lens' SchemaVersionNumber (Maybe Natural)
svnVersionNumber = lens _svnVersionNumber (\s a -> s {_svnVersionNumber = a}) . mapping _Nat

instance Hashable SchemaVersionNumber

instance NFData SchemaVersionNumber

instance ToJSON SchemaVersionNumber where
  toJSON SchemaVersionNumber' {..} =
    object
      ( catMaybes
          [ ("LatestVersion" .=) <$> _svnLatestVersion,
            ("VersionNumber" .=) <$> _svnVersionNumber
          ]
      )
