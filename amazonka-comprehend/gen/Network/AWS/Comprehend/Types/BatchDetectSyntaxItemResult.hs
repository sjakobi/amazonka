{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.BatchDetectSyntaxItemResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.BatchDetectSyntaxItemResult where

import Network.AWS.Comprehend.Types.SyntaxToken
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The result of calling the operation. The operation returns one object that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectSyntaxItemResult' smart constructor.
data BatchDetectSyntaxItemResult = BatchDetectSyntaxItemResult'
  { _bSyntaxTokens ::
      !( Maybe
           [SyntaxToken]
       ),
    _bIndex ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectSyntaxItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSyntaxTokens' - The syntax tokens for the words in the document, one token for each word.
--
-- * 'bIndex' - The zero-based index of the document in the input list.
batchDetectSyntaxItemResult ::
  BatchDetectSyntaxItemResult
batchDetectSyntaxItemResult =
  BatchDetectSyntaxItemResult'
    { _bSyntaxTokens =
        Nothing,
      _bIndex = Nothing
    }

-- | The syntax tokens for the words in the document, one token for each word.
bSyntaxTokens :: Lens' BatchDetectSyntaxItemResult [SyntaxToken]
bSyntaxTokens = lens _bSyntaxTokens (\s a -> s {_bSyntaxTokens = a}) . _Default . _Coerce

-- | The zero-based index of the document in the input list.
bIndex :: Lens' BatchDetectSyntaxItemResult (Maybe Int)
bIndex = lens _bIndex (\s a -> s {_bIndex = a})

instance FromJSON BatchDetectSyntaxItemResult where
  parseJSON =
    withObject
      "BatchDetectSyntaxItemResult"
      ( \x ->
          BatchDetectSyntaxItemResult'
            <$> (x .:? "SyntaxTokens" .!= mempty)
            <*> (x .:? "Index")
      )

instance Hashable BatchDetectSyntaxItemResult

instance NFData BatchDetectSyntaxItemResult
