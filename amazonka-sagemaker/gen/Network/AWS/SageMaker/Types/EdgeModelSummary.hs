{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EdgeModelSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgeModelSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary of model on edge device.
--
--
--
-- /See:/ 'edgeModelSummary' smart constructor.
data EdgeModelSummary = EdgeModelSummary'
  { _emsModelName ::
      !Text,
    _emsModelVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EdgeModelSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emsModelName' - The name of the model.
--
-- * 'emsModelVersion' - The version model.
edgeModelSummary ::
  -- | 'emsModelName'
  Text ->
  -- | 'emsModelVersion'
  Text ->
  EdgeModelSummary
edgeModelSummary pModelName_ pModelVersion_ =
  EdgeModelSummary'
    { _emsModelName = pModelName_,
      _emsModelVersion = pModelVersion_
    }

-- | The name of the model.
emsModelName :: Lens' EdgeModelSummary Text
emsModelName = lens _emsModelName (\s a -> s {_emsModelName = a})

-- | The version model.
emsModelVersion :: Lens' EdgeModelSummary Text
emsModelVersion = lens _emsModelVersion (\s a -> s {_emsModelVersion = a})

instance FromJSON EdgeModelSummary where
  parseJSON =
    withObject
      "EdgeModelSummary"
      ( \x ->
          EdgeModelSummary'
            <$> (x .: "ModelName") <*> (x .: "ModelVersion")
      )

instance Hashable EdgeModelSummary

instance NFData EdgeModelSummary
