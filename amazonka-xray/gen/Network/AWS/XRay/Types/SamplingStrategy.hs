{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.SamplingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.SamplingStrategy where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.SamplingStrategyName

-- | The name and value of a sampling rule to apply to a trace summary.
--
--
--
-- /See:/ 'samplingStrategy' smart constructor.
data SamplingStrategy = SamplingStrategy'
  { _ssName ::
      !(Maybe SamplingStrategyName),
    _ssValue :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SamplingStrategy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssName' - The name of a sampling rule.
--
-- * 'ssValue' - The value of a sampling rule.
samplingStrategy ::
  SamplingStrategy
samplingStrategy =
  SamplingStrategy'
    { _ssName = Nothing,
      _ssValue = Nothing
    }

-- | The name of a sampling rule.
ssName :: Lens' SamplingStrategy (Maybe SamplingStrategyName)
ssName = lens _ssName (\s a -> s {_ssName = a})

-- | The value of a sampling rule.
ssValue :: Lens' SamplingStrategy (Maybe Double)
ssValue = lens _ssValue (\s a -> s {_ssValue = a})

instance Hashable SamplingStrategy

instance NFData SamplingStrategy

instance ToJSON SamplingStrategy where
  toJSON SamplingStrategy' {..} =
    object
      ( catMaybes
          [("Name" .=) <$> _ssName, ("Value" .=) <$> _ssValue]
      )
