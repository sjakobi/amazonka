{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.BatchReadOperationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchReadOperationResponse where

import Network.AWS.CloudDirectory.Types.BatchReadException
import Network.AWS.CloudDirectory.Types.BatchReadSuccessfulResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of a @BatchRead@ response operation.
--
--
--
-- /See:/ 'batchReadOperationResponse' smart constructor.
data BatchReadOperationResponse = BatchReadOperationResponse'
  { _brorSuccessfulResponse ::
      !( Maybe
           BatchReadSuccessfulResponse
       ),
    _brorExceptionResponse ::
      !( Maybe
           BatchReadException
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

-- | Creates a value of 'BatchReadOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brorSuccessfulResponse' - Identifies which operation in a batch has succeeded.
--
-- * 'brorExceptionResponse' - Identifies which operation in a batch has failed.
batchReadOperationResponse ::
  BatchReadOperationResponse
batchReadOperationResponse =
  BatchReadOperationResponse'
    { _brorSuccessfulResponse =
        Nothing,
      _brorExceptionResponse = Nothing
    }

-- | Identifies which operation in a batch has succeeded.
brorSuccessfulResponse :: Lens' BatchReadOperationResponse (Maybe BatchReadSuccessfulResponse)
brorSuccessfulResponse = lens _brorSuccessfulResponse (\s a -> s {_brorSuccessfulResponse = a})

-- | Identifies which operation in a batch has failed.
brorExceptionResponse :: Lens' BatchReadOperationResponse (Maybe BatchReadException)
brorExceptionResponse = lens _brorExceptionResponse (\s a -> s {_brorExceptionResponse = a})

instance FromJSON BatchReadOperationResponse where
  parseJSON =
    withObject
      "BatchReadOperationResponse"
      ( \x ->
          BatchReadOperationResponse'
            <$> (x .:? "SuccessfulResponse")
            <*> (x .:? "ExceptionResponse")
      )

instance Hashable BatchReadOperationResponse

instance NFData BatchReadOperationResponse
