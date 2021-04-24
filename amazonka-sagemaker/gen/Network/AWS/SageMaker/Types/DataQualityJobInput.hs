{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataQualityJobInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataQualityJobInput where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.EndpointInput

-- | The input for the data quality monitoring job. Currently endpoints are supported for input.
--
--
--
-- /See:/ 'dataQualityJobInput' smart constructor.
newtype DataQualityJobInput = DataQualityJobInput'
  { _dqjiEndpointInput ::
      EndpointInput
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DataQualityJobInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqjiEndpointInput' - Undocumented member.
dataQualityJobInput ::
  -- | 'dqjiEndpointInput'
  EndpointInput ->
  DataQualityJobInput
dataQualityJobInput pEndpointInput_ =
  DataQualityJobInput'
    { _dqjiEndpointInput =
        pEndpointInput_
    }

-- | Undocumented member.
dqjiEndpointInput :: Lens' DataQualityJobInput EndpointInput
dqjiEndpointInput = lens _dqjiEndpointInput (\s a -> s {_dqjiEndpointInput = a})

instance FromJSON DataQualityJobInput where
  parseJSON =
    withObject
      "DataQualityJobInput"
      ( \x ->
          DataQualityJobInput' <$> (x .: "EndpointInput")
      )

instance Hashable DataQualityJobInput

instance NFData DataQualityJobInput

instance ToJSON DataQualityJobInput where
  toJSON DataQualityJobInput' {..} =
    object
      ( catMaybes
          [Just ("EndpointInput" .= _dqjiEndpointInput)]
      )
