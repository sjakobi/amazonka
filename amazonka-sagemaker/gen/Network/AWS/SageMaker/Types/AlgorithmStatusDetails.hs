{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AlgorithmStatusDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmStatusDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AlgorithmStatusItem

-- | Specifies the validation and image scan statuses of the algorithm.
--
--
--
-- /See:/ 'algorithmStatusDetails' smart constructor.
data AlgorithmStatusDetails = AlgorithmStatusDetails'
  { _asdValidationStatuses ::
      !( Maybe
           [AlgorithmStatusItem]
       ),
    _asdImageScanStatuses ::
      !( Maybe
           [AlgorithmStatusItem]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AlgorithmStatusDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdValidationStatuses' - The status of algorithm validation.
--
-- * 'asdImageScanStatuses' - The status of the scan of the algorithm's Docker image container.
algorithmStatusDetails ::
  AlgorithmStatusDetails
algorithmStatusDetails =
  AlgorithmStatusDetails'
    { _asdValidationStatuses =
        Nothing,
      _asdImageScanStatuses = Nothing
    }

-- | The status of algorithm validation.
asdValidationStatuses :: Lens' AlgorithmStatusDetails [AlgorithmStatusItem]
asdValidationStatuses = lens _asdValidationStatuses (\s a -> s {_asdValidationStatuses = a}) . _Default . _Coerce

-- | The status of the scan of the algorithm's Docker image container.
asdImageScanStatuses :: Lens' AlgorithmStatusDetails [AlgorithmStatusItem]
asdImageScanStatuses = lens _asdImageScanStatuses (\s a -> s {_asdImageScanStatuses = a}) . _Default . _Coerce

instance FromJSON AlgorithmStatusDetails where
  parseJSON =
    withObject
      "AlgorithmStatusDetails"
      ( \x ->
          AlgorithmStatusDetails'
            <$> (x .:? "ValidationStatuses" .!= mempty)
            <*> (x .:? "ImageScanStatuses" .!= mempty)
      )

instance Hashable AlgorithmStatusDetails

instance NFData AlgorithmStatusDetails
