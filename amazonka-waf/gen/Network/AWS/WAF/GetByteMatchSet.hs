{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.GetByteMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the 'ByteMatchSet' specified by @ByteMatchSetId@ .
module Network.AWS.WAF.GetByteMatchSet
  ( -- * Creating a Request
    getByteMatchSet,
    GetByteMatchSet,

    -- * Request Lenses
    gbmsByteMatchSetId,

    -- * Destructuring the Response
    getByteMatchSetResponse,
    GetByteMatchSetResponse,

    -- * Response Lenses
    gbmsrrsByteMatchSet,
    gbmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'getByteMatchSet' smart constructor.
newtype GetByteMatchSet = GetByteMatchSet'
  { _gbmsByteMatchSetId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetByteMatchSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbmsByteMatchSetId' - The @ByteMatchSetId@ of the 'ByteMatchSet' that you want to get. @ByteMatchSetId@ is returned by 'CreateByteMatchSet' and by 'ListByteMatchSets' .
getByteMatchSet ::
  -- | 'gbmsByteMatchSetId'
  Text ->
  GetByteMatchSet
getByteMatchSet pByteMatchSetId_ =
  GetByteMatchSet'
    { _gbmsByteMatchSetId =
        pByteMatchSetId_
    }

-- | The @ByteMatchSetId@ of the 'ByteMatchSet' that you want to get. @ByteMatchSetId@ is returned by 'CreateByteMatchSet' and by 'ListByteMatchSets' .
gbmsByteMatchSetId :: Lens' GetByteMatchSet Text
gbmsByteMatchSetId = lens _gbmsByteMatchSetId (\s a -> s {_gbmsByteMatchSetId = a})

instance AWSRequest GetByteMatchSet where
  type Rs GetByteMatchSet = GetByteMatchSetResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          GetByteMatchSetResponse'
            <$> (x .?> "ByteMatchSet") <*> (pure (fromEnum s))
      )

instance Hashable GetByteMatchSet

instance NFData GetByteMatchSet

instance ToHeaders GetByteMatchSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSWAF_20150824.GetByteMatchSet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetByteMatchSet where
  toJSON GetByteMatchSet' {..} =
    object
      ( catMaybes
          [Just ("ByteMatchSetId" .= _gbmsByteMatchSetId)]
      )

instance ToPath GetByteMatchSet where
  toPath = const "/"

instance ToQuery GetByteMatchSet where
  toQuery = const mempty

-- | /See:/ 'getByteMatchSetResponse' smart constructor.
data GetByteMatchSetResponse = GetByteMatchSetResponse'
  { _gbmsrrsByteMatchSet ::
      !(Maybe ByteMatchSet),
    _gbmsrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetByteMatchSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbmsrrsByteMatchSet' - Information about the 'ByteMatchSet' that you specified in the @GetByteMatchSet@ request. For more information, see the following topics:     * 'ByteMatchSet' : Contains @ByteMatchSetId@ , @ByteMatchTuples@ , and @Name@      * @ByteMatchTuples@ : Contains an array of 'ByteMatchTuple' objects. Each @ByteMatchTuple@ object contains 'FieldToMatch' , @PositionalConstraint@ , @TargetString@ , and @TextTransformation@      * 'FieldToMatch' : Contains @Data@ and @Type@
--
-- * 'gbmsrrsResponseStatus' - -- | The response status code.
getByteMatchSetResponse ::
  -- | 'gbmsrrsResponseStatus'
  Int ->
  GetByteMatchSetResponse
getByteMatchSetResponse pResponseStatus_ =
  GetByteMatchSetResponse'
    { _gbmsrrsByteMatchSet =
        Nothing,
      _gbmsrrsResponseStatus = pResponseStatus_
    }

-- | Information about the 'ByteMatchSet' that you specified in the @GetByteMatchSet@ request. For more information, see the following topics:     * 'ByteMatchSet' : Contains @ByteMatchSetId@ , @ByteMatchTuples@ , and @Name@      * @ByteMatchTuples@ : Contains an array of 'ByteMatchTuple' objects. Each @ByteMatchTuple@ object contains 'FieldToMatch' , @PositionalConstraint@ , @TargetString@ , and @TextTransformation@      * 'FieldToMatch' : Contains @Data@ and @Type@
gbmsrrsByteMatchSet :: Lens' GetByteMatchSetResponse (Maybe ByteMatchSet)
gbmsrrsByteMatchSet = lens _gbmsrrsByteMatchSet (\s a -> s {_gbmsrrsByteMatchSet = a})

-- | -- | The response status code.
gbmsrrsResponseStatus :: Lens' GetByteMatchSetResponse Int
gbmsrrsResponseStatus = lens _gbmsrrsResponseStatus (\s a -> s {_gbmsrrsResponseStatus = a})

instance NFData GetByteMatchSetResponse
