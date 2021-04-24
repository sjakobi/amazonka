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
-- Module      : Network.AWS.WAFRegional.GetRegexPatternSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the 'RegexPatternSet' specified by @RegexPatternSetId@ .
module Network.AWS.WAFRegional.GetRegexPatternSet
  ( -- * Creating a Request
    getRegexPatternSet,
    GetRegexPatternSet,

    -- * Request Lenses
    grpsRegexPatternSetId,

    -- * Destructuring the Response
    getRegexPatternSetResponse,
    GetRegexPatternSetResponse,

    -- * Response Lenses
    grpsrrsRegexPatternSet,
    grpsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'getRegexPatternSet' smart constructor.
newtype GetRegexPatternSet = GetRegexPatternSet'
  { _grpsRegexPatternSetId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRegexPatternSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grpsRegexPatternSetId' - The @RegexPatternSetId@ of the 'RegexPatternSet' that you want to get. @RegexPatternSetId@ is returned by 'CreateRegexPatternSet' and by 'ListRegexPatternSets' .
getRegexPatternSet ::
  -- | 'grpsRegexPatternSetId'
  Text ->
  GetRegexPatternSet
getRegexPatternSet pRegexPatternSetId_ =
  GetRegexPatternSet'
    { _grpsRegexPatternSetId =
        pRegexPatternSetId_
    }

-- | The @RegexPatternSetId@ of the 'RegexPatternSet' that you want to get. @RegexPatternSetId@ is returned by 'CreateRegexPatternSet' and by 'ListRegexPatternSets' .
grpsRegexPatternSetId :: Lens' GetRegexPatternSet Text
grpsRegexPatternSetId = lens _grpsRegexPatternSetId (\s a -> s {_grpsRegexPatternSetId = a})

instance AWSRequest GetRegexPatternSet where
  type
    Rs GetRegexPatternSet =
      GetRegexPatternSetResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          GetRegexPatternSetResponse'
            <$> (x .?> "RegexPatternSet") <*> (pure (fromEnum s))
      )

instance Hashable GetRegexPatternSet

instance NFData GetRegexPatternSet

instance ToHeaders GetRegexPatternSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.GetRegexPatternSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRegexPatternSet where
  toJSON GetRegexPatternSet' {..} =
    object
      ( catMaybes
          [ Just
              ("RegexPatternSetId" .= _grpsRegexPatternSetId)
          ]
      )

instance ToPath GetRegexPatternSet where
  toPath = const "/"

instance ToQuery GetRegexPatternSet where
  toQuery = const mempty

-- | /See:/ 'getRegexPatternSetResponse' smart constructor.
data GetRegexPatternSetResponse = GetRegexPatternSetResponse'
  { _grpsrrsRegexPatternSet ::
      !( Maybe
           RegexPatternSet
       ),
    _grpsrrsResponseStatus ::
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

-- | Creates a value of 'GetRegexPatternSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grpsrrsRegexPatternSet' - Information about the 'RegexPatternSet' that you specified in the @GetRegexPatternSet@ request, including the identifier of the pattern set and the regular expression patterns you want AWS WAF to search for.
--
-- * 'grpsrrsResponseStatus' - -- | The response status code.
getRegexPatternSetResponse ::
  -- | 'grpsrrsResponseStatus'
  Int ->
  GetRegexPatternSetResponse
getRegexPatternSetResponse pResponseStatus_ =
  GetRegexPatternSetResponse'
    { _grpsrrsRegexPatternSet =
        Nothing,
      _grpsrrsResponseStatus = pResponseStatus_
    }

-- | Information about the 'RegexPatternSet' that you specified in the @GetRegexPatternSet@ request, including the identifier of the pattern set and the regular expression patterns you want AWS WAF to search for.
grpsrrsRegexPatternSet :: Lens' GetRegexPatternSetResponse (Maybe RegexPatternSet)
grpsrrsRegexPatternSet = lens _grpsrrsRegexPatternSet (\s a -> s {_grpsrrsRegexPatternSet = a})

-- | -- | The response status code.
grpsrrsResponseStatus :: Lens' GetRegexPatternSetResponse Int
grpsrrsResponseStatus = lens _grpsrrsResponseStatus (\s a -> s {_grpsrrsResponseStatus = a})

instance NFData GetRegexPatternSetResponse
