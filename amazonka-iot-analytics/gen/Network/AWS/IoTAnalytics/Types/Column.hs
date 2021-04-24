{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.Column
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.Column where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a column that stores your data.
--
--
--
-- /See:/ 'column' smart constructor.
data Column = Column'
  { _cName :: !Text,
    _cType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cName' - The name of the column.
--
-- * 'cType' - The type of data. For more information about the supported data types, see <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html Common data types> in the /AWS Glue Developer Guide/ .
column ::
  -- | 'cName'
  Text ->
  -- | 'cType'
  Text ->
  Column
column pName_ pType_ =
  Column' {_cName = pName_, _cType = pType_}

-- | The name of the column.
cName :: Lens' Column Text
cName = lens _cName (\s a -> s {_cName = a})

-- | The type of data. For more information about the supported data types, see <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html Common data types> in the /AWS Glue Developer Guide/ .
cType :: Lens' Column Text
cType = lens _cType (\s a -> s {_cType = a})

instance FromJSON Column where
  parseJSON =
    withObject
      "Column"
      (\x -> Column' <$> (x .: "name") <*> (x .: "type"))

instance Hashable Column

instance NFData Column

instance ToJSON Column where
  toJSON Column' {..} =
    object
      ( catMaybes
          [Just ("name" .= _cName), Just ("type" .= _cType)]
      )
