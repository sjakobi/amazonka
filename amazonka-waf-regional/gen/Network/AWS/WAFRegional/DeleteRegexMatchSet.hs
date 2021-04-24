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
-- Module      : Network.AWS.WAFRegional.DeleteRegexMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a 'RegexMatchSet' . You can't delete a @RegexMatchSet@ if it's still used in any @Rules@ or if it still includes any @RegexMatchTuples@ objects (any filters).
--
--
-- If you just want to remove a @RegexMatchSet@ from a @Rule@ , use 'UpdateRule' .
--
-- To permanently delete a @RegexMatchSet@ , perform the following steps:
--
--     * Update the @RegexMatchSet@ to remove filters, if any. For more information, see 'UpdateRegexMatchSet' .
--
--     * Use 'GetChangeToken' to get the change token that you provide in the @ChangeToken@ parameter of a @DeleteRegexMatchSet@ request.
--
--     * Submit a @DeleteRegexMatchSet@ request.
module Network.AWS.WAFRegional.DeleteRegexMatchSet
  ( -- * Creating a Request
    deleteRegexMatchSet,
    DeleteRegexMatchSet,

    -- * Request Lenses
    drmsRegexMatchSetId,
    drmsChangeToken,

    -- * Destructuring the Response
    deleteRegexMatchSetResponse,
    DeleteRegexMatchSetResponse,

    -- * Response Lenses
    drmsrrsChangeToken,
    drmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'deleteRegexMatchSet' smart constructor.
data DeleteRegexMatchSet = DeleteRegexMatchSet'
  { _drmsRegexMatchSetId ::
      !Text,
    _drmsChangeToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRegexMatchSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drmsRegexMatchSetId' - The @RegexMatchSetId@ of the 'RegexMatchSet' that you want to delete. @RegexMatchSetId@ is returned by 'CreateRegexMatchSet' and by 'ListRegexMatchSets' .
--
-- * 'drmsChangeToken' - The value returned by the most recent call to 'GetChangeToken' .
deleteRegexMatchSet ::
  -- | 'drmsRegexMatchSetId'
  Text ->
  -- | 'drmsChangeToken'
  Text ->
  DeleteRegexMatchSet
deleteRegexMatchSet pRegexMatchSetId_ pChangeToken_ =
  DeleteRegexMatchSet'
    { _drmsRegexMatchSetId =
        pRegexMatchSetId_,
      _drmsChangeToken = pChangeToken_
    }

-- | The @RegexMatchSetId@ of the 'RegexMatchSet' that you want to delete. @RegexMatchSetId@ is returned by 'CreateRegexMatchSet' and by 'ListRegexMatchSets' .
drmsRegexMatchSetId :: Lens' DeleteRegexMatchSet Text
drmsRegexMatchSetId = lens _drmsRegexMatchSetId (\s a -> s {_drmsRegexMatchSetId = a})

-- | The value returned by the most recent call to 'GetChangeToken' .
drmsChangeToken :: Lens' DeleteRegexMatchSet Text
drmsChangeToken = lens _drmsChangeToken (\s a -> s {_drmsChangeToken = a})

instance AWSRequest DeleteRegexMatchSet where
  type
    Rs DeleteRegexMatchSet =
      DeleteRegexMatchSetResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          DeleteRegexMatchSetResponse'
            <$> (x .?> "ChangeToken") <*> (pure (fromEnum s))
      )

instance Hashable DeleteRegexMatchSet

instance NFData DeleteRegexMatchSet

instance ToHeaders DeleteRegexMatchSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.DeleteRegexMatchSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRegexMatchSet where
  toJSON DeleteRegexMatchSet' {..} =
    object
      ( catMaybes
          [ Just ("RegexMatchSetId" .= _drmsRegexMatchSetId),
            Just ("ChangeToken" .= _drmsChangeToken)
          ]
      )

instance ToPath DeleteRegexMatchSet where
  toPath = const "/"

instance ToQuery DeleteRegexMatchSet where
  toQuery = const mempty

-- | /See:/ 'deleteRegexMatchSetResponse' smart constructor.
data DeleteRegexMatchSetResponse = DeleteRegexMatchSetResponse'
  { _drmsrrsChangeToken ::
      !(Maybe Text),
    _drmsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteRegexMatchSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drmsrrsChangeToken' - The @ChangeToken@ that you used to submit the @DeleteRegexMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
--
-- * 'drmsrrsResponseStatus' - -- | The response status code.
deleteRegexMatchSetResponse ::
  -- | 'drmsrrsResponseStatus'
  Int ->
  DeleteRegexMatchSetResponse
deleteRegexMatchSetResponse pResponseStatus_ =
  DeleteRegexMatchSetResponse'
    { _drmsrrsChangeToken =
        Nothing,
      _drmsrrsResponseStatus = pResponseStatus_
    }

-- | The @ChangeToken@ that you used to submit the @DeleteRegexMatchSet@ request. You can also use this value to query the status of the request. For more information, see 'GetChangeTokenStatus' .
drmsrrsChangeToken :: Lens' DeleteRegexMatchSetResponse (Maybe Text)
drmsrrsChangeToken = lens _drmsrrsChangeToken (\s a -> s {_drmsrrsChangeToken = a})

-- | -- | The response status code.
drmsrrsResponseStatus :: Lens' DeleteRegexMatchSetResponse Int
drmsrrsResponseStatus = lens _drmsrrsResponseStatus (\s a -> s {_drmsrrsResponseStatus = a})

instance NFData DeleteRegexMatchSetResponse
