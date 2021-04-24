{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.RecordOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.RecordOutput where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The output for the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
--
--
--
-- /See:/ 'recordOutput' smart constructor.
data RecordOutput = RecordOutput'
  { _roOutputKey ::
      !(Maybe Text),
    _roOutputValue :: !(Maybe Text),
    _roDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RecordOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roOutputKey' - The output key.
--
-- * 'roOutputValue' - The output value.
--
-- * 'roDescription' - The description of the output.
recordOutput ::
  RecordOutput
recordOutput =
  RecordOutput'
    { _roOutputKey = Nothing,
      _roOutputValue = Nothing,
      _roDescription = Nothing
    }

-- | The output key.
roOutputKey :: Lens' RecordOutput (Maybe Text)
roOutputKey = lens _roOutputKey (\s a -> s {_roOutputKey = a})

-- | The output value.
roOutputValue :: Lens' RecordOutput (Maybe Text)
roOutputValue = lens _roOutputValue (\s a -> s {_roOutputValue = a})

-- | The description of the output.
roDescription :: Lens' RecordOutput (Maybe Text)
roDescription = lens _roDescription (\s a -> s {_roDescription = a})

instance FromJSON RecordOutput where
  parseJSON =
    withObject
      "RecordOutput"
      ( \x ->
          RecordOutput'
            <$> (x .:? "OutputKey")
            <*> (x .:? "OutputValue")
            <*> (x .:? "Description")
      )

instance Hashable RecordOutput

instance NFData RecordOutput
