{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LayerFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LayerFailure where

import Network.AWS.ECR.Types.LayerFailureCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an Amazon ECR image layer failure.
--
--
--
-- /See:/ 'layerFailure' smart constructor.
data LayerFailure = LayerFailure'
  { _lfFailureCode ::
      !(Maybe LayerFailureCode),
    _lfFailureReason :: !(Maybe Text),
    _lfLayerDigest :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LayerFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfFailureCode' - The failure code associated with the failure.
--
-- * 'lfFailureReason' - The reason for the failure.
--
-- * 'lfLayerDigest' - The layer digest associated with the failure.
layerFailure ::
  LayerFailure
layerFailure =
  LayerFailure'
    { _lfFailureCode = Nothing,
      _lfFailureReason = Nothing,
      _lfLayerDigest = Nothing
    }

-- | The failure code associated with the failure.
lfFailureCode :: Lens' LayerFailure (Maybe LayerFailureCode)
lfFailureCode = lens _lfFailureCode (\s a -> s {_lfFailureCode = a})

-- | The reason for the failure.
lfFailureReason :: Lens' LayerFailure (Maybe Text)
lfFailureReason = lens _lfFailureReason (\s a -> s {_lfFailureReason = a})

-- | The layer digest associated with the failure.
lfLayerDigest :: Lens' LayerFailure (Maybe Text)
lfLayerDigest = lens _lfLayerDigest (\s a -> s {_lfLayerDigest = a})

instance FromJSON LayerFailure where
  parseJSON =
    withObject
      "LayerFailure"
      ( \x ->
          LayerFailure'
            <$> (x .:? "failureCode")
            <*> (x .:? "failureReason")
            <*> (x .:? "layerDigest")
      )

instance Hashable LayerFailure

instance NFData LayerFailure
