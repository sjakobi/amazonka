{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.Output
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Output where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Output data type.
--
--
--
-- /See:/ 'output' smart constructor.
data Output = Output'
  { _oOutputKey :: !(Maybe Text),
    _oOutputValue :: !(Maybe Text),
    _oDescription :: !(Maybe Text),
    _oExportName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Output' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOutputKey' - The key associated with the output.
--
-- * 'oOutputValue' - The value associated with the output.
--
-- * 'oDescription' - User defined description associated with the output.
--
-- * 'oExportName' - The name of the export associated with the output.
output ::
  Output
output =
  Output'
    { _oOutputKey = Nothing,
      _oOutputValue = Nothing,
      _oDescription = Nothing,
      _oExportName = Nothing
    }

-- | The key associated with the output.
oOutputKey :: Lens' Output (Maybe Text)
oOutputKey = lens _oOutputKey (\s a -> s {_oOutputKey = a})

-- | The value associated with the output.
oOutputValue :: Lens' Output (Maybe Text)
oOutputValue = lens _oOutputValue (\s a -> s {_oOutputValue = a})

-- | User defined description associated with the output.
oDescription :: Lens' Output (Maybe Text)
oDescription = lens _oDescription (\s a -> s {_oDescription = a})

-- | The name of the export associated with the output.
oExportName :: Lens' Output (Maybe Text)
oExportName = lens _oExportName (\s a -> s {_oExportName = a})

instance FromXML Output where
  parseXML x =
    Output'
      <$> (x .@? "OutputKey")
      <*> (x .@? "OutputValue")
      <*> (x .@? "Description")
      <*> (x .@? "ExportName")

instance Hashable Output

instance NFData Output
