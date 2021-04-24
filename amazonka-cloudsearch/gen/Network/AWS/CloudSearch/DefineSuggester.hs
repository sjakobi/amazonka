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
-- Module      : Network.AWS.CloudSearch.DefineSuggester
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html Getting Search Suggestions> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DefineSuggester
  ( -- * Creating a Request
    defineSuggester,
    DefineSuggester,

    -- * Request Lenses
    dDomainName,
    dSuggester,

    -- * Destructuring the Response
    defineSuggesterResponse,
    DefineSuggesterResponse,

    -- * Response Lenses
    dsrsrsResponseStatus,
    dsrsrsSuggester,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DefineSuggester' @ operation. Specifies the name of the domain you want to update and the suggester configuration.
--
--
--
-- /See:/ 'defineSuggester' smart constructor.
data DefineSuggester = DefineSuggester'
  { _dDomainName ::
      !Text,
    _dSuggester :: !Suggester
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefineSuggester' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDomainName' - Undocumented member.
--
-- * 'dSuggester' - Undocumented member.
defineSuggester ::
  -- | 'dDomainName'
  Text ->
  -- | 'dSuggester'
  Suggester ->
  DefineSuggester
defineSuggester pDomainName_ pSuggester_ =
  DefineSuggester'
    { _dDomainName = pDomainName_,
      _dSuggester = pSuggester_
    }

-- | Undocumented member.
dDomainName :: Lens' DefineSuggester Text
dDomainName = lens _dDomainName (\s a -> s {_dDomainName = a})

-- | Undocumented member.
dSuggester :: Lens' DefineSuggester Suggester
dSuggester = lens _dSuggester (\s a -> s {_dSuggester = a})

instance AWSRequest DefineSuggester where
  type Rs DefineSuggester = DefineSuggesterResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DefineSuggesterResult"
      ( \s h x ->
          DefineSuggesterResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "Suggester")
      )

instance Hashable DefineSuggester

instance NFData DefineSuggester

instance ToHeaders DefineSuggester where
  toHeaders = const mempty

instance ToPath DefineSuggester where
  toPath = const "/"

instance ToQuery DefineSuggester where
  toQuery DefineSuggester' {..} =
    mconcat
      [ "Action" =: ("DefineSuggester" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _dDomainName,
        "Suggester" =: _dSuggester
      ]

-- | The result of a @DefineSuggester@ request. Contains the status of the newly-configured suggester.
--
--
--
-- /See:/ 'defineSuggesterResponse' smart constructor.
data DefineSuggesterResponse = DefineSuggesterResponse'
  { _dsrsrsResponseStatus ::
      !Int,
    _dsrsrsSuggester ::
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

-- | Creates a value of 'DefineSuggesterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrsrsResponseStatus' - -- | The response status code.
--
-- * 'dsrsrsSuggester' - Undocumented member.
defineSuggesterResponse ::
  -- | 'dsrsrsResponseStatus'
  Int ->
  -- | 'dsrsrsSuggester'
  SuggesterStatus ->
  DefineSuggesterResponse
defineSuggesterResponse pResponseStatus_ pSuggester_ =
  DefineSuggesterResponse'
    { _dsrsrsResponseStatus =
        pResponseStatus_,
      _dsrsrsSuggester = pSuggester_
    }

-- | -- | The response status code.
dsrsrsResponseStatus :: Lens' DefineSuggesterResponse Int
dsrsrsResponseStatus = lens _dsrsrsResponseStatus (\s a -> s {_dsrsrsResponseStatus = a})

-- | Undocumented member.
dsrsrsSuggester :: Lens' DefineSuggesterResponse SuggesterStatus
dsrsrsSuggester = lens _dsrsrsSuggester (\s a -> s {_dsrsrsSuggester = a})

instance NFData DefineSuggesterResponse
