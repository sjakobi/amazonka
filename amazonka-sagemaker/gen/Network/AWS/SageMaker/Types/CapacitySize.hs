{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CapacitySize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CapacitySize where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CapacitySizeType

-- | Currently, the @CapacitySize@ API is not supported.
--
--
--
-- /See:/ 'capacitySize' smart constructor.
data CapacitySize = CapacitySize'
  { _csType ::
      !CapacitySizeType,
    _csValue :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CapacitySize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csType' - This API is not supported.
--
-- * 'csValue' -
capacitySize ::
  -- | 'csType'
  CapacitySizeType ->
  -- | 'csValue'
  Natural ->
  CapacitySize
capacitySize pType_ pValue_ =
  CapacitySize'
    { _csType = pType_,
      _csValue = _Nat # pValue_
    }

-- | This API is not supported.
csType :: Lens' CapacitySize CapacitySizeType
csType = lens _csType (\s a -> s {_csType = a})

-- |
csValue :: Lens' CapacitySize Natural
csValue = lens _csValue (\s a -> s {_csValue = a}) . _Nat

instance FromJSON CapacitySize where
  parseJSON =
    withObject
      "CapacitySize"
      ( \x ->
          CapacitySize' <$> (x .: "Type") <*> (x .: "Value")
      )

instance Hashable CapacitySize

instance NFData CapacitySize

instance ToJSON CapacitySize where
  toJSON CapacitySize' {..} =
    object
      ( catMaybes
          [ Just ("Type" .= _csType),
            Just ("Value" .= _csValue)
          ]
      )
