{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.Types.ParameterObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.ParameterObject where

import Network.AWS.DataPipeline.Types.ParameterAttribute
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a parameter object.
--
--
--
-- /See:/ 'parameterObject' smart constructor.
data ParameterObject = ParameterObject'
  { _pId ::
      !Text,
    _pAttributes :: ![ParameterAttribute]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pId' - The ID of the parameter object.
--
-- * 'pAttributes' - The attributes of the parameter object.
parameterObject ::
  -- | 'pId'
  Text ->
  ParameterObject
parameterObject pId_ =
  ParameterObject'
    { _pId = pId_,
      _pAttributes = mempty
    }

-- | The ID of the parameter object.
pId :: Lens' ParameterObject Text
pId = lens _pId (\s a -> s {_pId = a})

-- | The attributes of the parameter object.
pAttributes :: Lens' ParameterObject [ParameterAttribute]
pAttributes = lens _pAttributes (\s a -> s {_pAttributes = a}) . _Coerce

instance FromJSON ParameterObject where
  parseJSON =
    withObject
      "ParameterObject"
      ( \x ->
          ParameterObject'
            <$> (x .: "id") <*> (x .:? "attributes" .!= mempty)
      )

instance Hashable ParameterObject

instance NFData ParameterObject

instance ToJSON ParameterObject where
  toJSON ParameterObject' {..} =
    object
      ( catMaybes
          [ Just ("id" .= _pId),
            Just ("attributes" .= _pAttributes)
          ]
      )
