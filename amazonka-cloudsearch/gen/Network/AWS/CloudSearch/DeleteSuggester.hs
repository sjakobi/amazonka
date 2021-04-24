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
-- Module      : Network.AWS.CloudSearch.DeleteSuggester
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a suggester. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html Getting Search Suggestions> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DeleteSuggester
  ( -- * Creating a Request
    deleteSuggester,
    DeleteSuggester,

    -- * Request Lenses
    dssDomainName,
    dssSuggesterName,

    -- * Destructuring the Response
    deleteSuggesterResponse,
    DeleteSuggesterResponse,

    -- * Response Lenses
    dsrrsResponseStatus,
    dsrrsSuggester,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DeleteSuggester' @ operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.
--
--
--
-- /See:/ 'deleteSuggester' smart constructor.
data DeleteSuggester = DeleteSuggester'
  { _dssDomainName ::
      !Text,
    _dssSuggesterName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSuggester' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssDomainName' - Undocumented member.
--
-- * 'dssSuggesterName' - Specifies the name of the suggester you want to delete.
deleteSuggester ::
  -- | 'dssDomainName'
  Text ->
  -- | 'dssSuggesterName'
  Text ->
  DeleteSuggester
deleteSuggester pDomainName_ pSuggesterName_ =
  DeleteSuggester'
    { _dssDomainName = pDomainName_,
      _dssSuggesterName = pSuggesterName_
    }

-- | Undocumented member.
dssDomainName :: Lens' DeleteSuggester Text
dssDomainName = lens _dssDomainName (\s a -> s {_dssDomainName = a})

-- | Specifies the name of the suggester you want to delete.
dssSuggesterName :: Lens' DeleteSuggester Text
dssSuggesterName = lens _dssSuggesterName (\s a -> s {_dssSuggesterName = a})

instance AWSRequest DeleteSuggester where
  type Rs DeleteSuggester = DeleteSuggesterResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DeleteSuggesterResult"
      ( \s h x ->
          DeleteSuggesterResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "Suggester")
      )

instance Hashable DeleteSuggester

instance NFData DeleteSuggester

instance ToHeaders DeleteSuggester where
  toHeaders = const mempty

instance ToPath DeleteSuggester where
  toPath = const "/"

instance ToQuery DeleteSuggester where
  toQuery DeleteSuggester' {..} =
    mconcat
      [ "Action" =: ("DeleteSuggester" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _dssDomainName,
        "SuggesterName" =: _dssSuggesterName
      ]

-- | The result of a @DeleteSuggester@ request. Contains the status of the deleted suggester.
--
--
--
-- /See:/ 'deleteSuggesterResponse' smart constructor.
data DeleteSuggesterResponse = DeleteSuggesterResponse'
  { _dsrrsResponseStatus ::
      !Int,
    _dsrrsSuggester ::
      !SuggesterStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteSuggesterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
--
-- * 'dsrrsSuggester' - The status of the suggester being deleted.
deleteSuggesterResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  -- | 'dsrrsSuggester'
  SuggesterStatus ->
  DeleteSuggesterResponse
deleteSuggesterResponse pResponseStatus_ pSuggester_ =
  DeleteSuggesterResponse'
    { _dsrrsResponseStatus =
        pResponseStatus_,
      _dsrrsSuggester = pSuggester_
    }

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DeleteSuggesterResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

-- | The status of the suggester being deleted.
dsrrsSuggester :: Lens' DeleteSuggesterResponse SuggesterStatus
dsrrsSuggester = lens _dsrrsSuggester (\s a -> s {_dsrrsSuggester = a})

instance NFData DeleteSuggesterResponse
