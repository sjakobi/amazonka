{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.BatchItemError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.BatchItemError where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an error that occurred while processing a document in a batch. The operation returns on @BatchItemError@ object for each document that contained an error.
--
--
--
-- /See:/ 'batchItemError' smart constructor.
data BatchItemError = BatchItemError'
  { _bieIndex ::
      !(Maybe Int),
    _bieErrorMessage :: !(Maybe Text),
    _bieErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchItemError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bieIndex' - The zero-based index of the document in the input list.
--
-- * 'bieErrorMessage' - A text description of the error.
--
-- * 'bieErrorCode' - The numeric error code of the error.
batchItemError ::
  BatchItemError
batchItemError =
  BatchItemError'
    { _bieIndex = Nothing,
      _bieErrorMessage = Nothing,
      _bieErrorCode = Nothing
    }

-- | The zero-based index of the document in the input list.
bieIndex :: Lens' BatchItemError (Maybe Int)
bieIndex = lens _bieIndex (\s a -> s {_bieIndex = a})

-- | A text description of the error.
bieErrorMessage :: Lens' BatchItemError (Maybe Text)
bieErrorMessage = lens _bieErrorMessage (\s a -> s {_bieErrorMessage = a})

-- | The numeric error code of the error.
bieErrorCode :: Lens' BatchItemError (Maybe Text)
bieErrorCode = lens _bieErrorCode (\s a -> s {_bieErrorCode = a})

instance FromJSON BatchItemError where
  parseJSON =
    withObject
      "BatchItemError"
      ( \x ->
          BatchItemError'
            <$> (x .:? "Index")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "ErrorCode")
      )

instance Hashable BatchItemError

instance NFData BatchItemError
