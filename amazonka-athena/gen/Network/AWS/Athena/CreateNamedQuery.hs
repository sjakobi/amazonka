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
-- Module      : Network.AWS.Athena.CreateNamedQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a named query in the specified workgroup. Requires that you have access to the workgroup.
--
--
-- For code samples using the AWS SDK for Java, see <http://docs.aws.amazon.com/athena/latest/ug/code-samples.html Examples and Code Samples> in the /Amazon Athena User Guide/ .
module Network.AWS.Athena.CreateNamedQuery
  ( -- * Creating a Request
    createNamedQuery,
    CreateNamedQuery,

    -- * Request Lenses
    cnqWorkGroup,
    cnqDescription,
    cnqClientRequestToken,
    cnqName,
    cnqDatabase,
    cnqQueryString,

    -- * Destructuring the Response
    createNamedQueryResponse,
    CreateNamedQueryResponse,

    -- * Response Lenses
    cnqrrsNamedQueryId,
    cnqrrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createNamedQuery' smart constructor.
data CreateNamedQuery = CreateNamedQuery'
  { _cnqWorkGroup ::
      !(Maybe Text),
    _cnqDescription :: !(Maybe Text),
    _cnqClientRequestToken ::
      !(Maybe Text),
    _cnqName :: !Text,
    _cnqDatabase :: !Text,
    _cnqQueryString :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateNamedQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnqWorkGroup' - The name of the workgroup in which the named query is being created.
--
-- * 'cnqDescription' - The query description.
--
-- * 'cnqClientRequestToken' - A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another @CreateNamedQuery@ request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the @QueryString@ , an error is returned. /Important:/ This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.
--
-- * 'cnqName' - The query name.
--
-- * 'cnqDatabase' - The database to which the query belongs.
--
-- * 'cnqQueryString' - The contents of the query with all query statements.
createNamedQuery ::
  -- | 'cnqName'
  Text ->
  -- | 'cnqDatabase'
  Text ->
  -- | 'cnqQueryString'
  Text ->
  CreateNamedQuery
createNamedQuery pName_ pDatabase_ pQueryString_ =
  CreateNamedQuery'
    { _cnqWorkGroup = Nothing,
      _cnqDescription = Nothing,
      _cnqClientRequestToken = Nothing,
      _cnqName = pName_,
      _cnqDatabase = pDatabase_,
      _cnqQueryString = pQueryString_
    }

-- | The name of the workgroup in which the named query is being created.
cnqWorkGroup :: Lens' CreateNamedQuery (Maybe Text)
cnqWorkGroup = lens _cnqWorkGroup (\s a -> s {_cnqWorkGroup = a})

-- | The query description.
cnqDescription :: Lens' CreateNamedQuery (Maybe Text)
cnqDescription = lens _cnqDescription (\s a -> s {_cnqDescription = a})

-- | A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another @CreateNamedQuery@ request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the @QueryString@ , an error is returned. /Important:/ This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.
cnqClientRequestToken :: Lens' CreateNamedQuery (Maybe Text)
cnqClientRequestToken = lens _cnqClientRequestToken (\s a -> s {_cnqClientRequestToken = a})

-- | The query name.
cnqName :: Lens' CreateNamedQuery Text
cnqName = lens _cnqName (\s a -> s {_cnqName = a})

-- | The database to which the query belongs.
cnqDatabase :: Lens' CreateNamedQuery Text
cnqDatabase = lens _cnqDatabase (\s a -> s {_cnqDatabase = a})

-- | The contents of the query with all query statements.
cnqQueryString :: Lens' CreateNamedQuery Text
cnqQueryString = lens _cnqQueryString (\s a -> s {_cnqQueryString = a})

instance AWSRequest CreateNamedQuery where
  type Rs CreateNamedQuery = CreateNamedQueryResponse
  request = postJSON athena
  response =
    receiveJSON
      ( \s h x ->
          CreateNamedQueryResponse'
            <$> (x .?> "NamedQueryId") <*> (pure (fromEnum s))
      )

instance Hashable CreateNamedQuery

instance NFData CreateNamedQuery

instance ToHeaders CreateNamedQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonAthena.CreateNamedQuery" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateNamedQuery where
  toJSON CreateNamedQuery' {..} =
    object
      ( catMaybes
          [ ("WorkGroup" .=) <$> _cnqWorkGroup,
            ("Description" .=) <$> _cnqDescription,
            ("ClientRequestToken" .=) <$> _cnqClientRequestToken,
            Just ("Name" .= _cnqName),
            Just ("Database" .= _cnqDatabase),
            Just ("QueryString" .= _cnqQueryString)
          ]
      )

instance ToPath CreateNamedQuery where
  toPath = const "/"

instance ToQuery CreateNamedQuery where
  toQuery = const mempty

-- | /See:/ 'createNamedQueryResponse' smart constructor.
data CreateNamedQueryResponse = CreateNamedQueryResponse'
  { _cnqrrsNamedQueryId ::
      !(Maybe Text),
    _cnqrrsResponseStatus ::
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

-- | Creates a value of 'CreateNamedQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnqrrsNamedQueryId' - The unique ID of the query.
--
-- * 'cnqrrsResponseStatus' - -- | The response status code.
createNamedQueryResponse ::
  -- | 'cnqrrsResponseStatus'
  Int ->
  CreateNamedQueryResponse
createNamedQueryResponse pResponseStatus_ =
  CreateNamedQueryResponse'
    { _cnqrrsNamedQueryId =
        Nothing,
      _cnqrrsResponseStatus = pResponseStatus_
    }

-- | The unique ID of the query.
cnqrrsNamedQueryId :: Lens' CreateNamedQueryResponse (Maybe Text)
cnqrrsNamedQueryId = lens _cnqrrsNamedQueryId (\s a -> s {_cnqrrsNamedQueryId = a})

-- | -- | The response status code.
cnqrrsResponseStatus :: Lens' CreateNamedQueryResponse Int
cnqrrsResponseStatus = lens _cnqrrsResponseStatus (\s a -> s {_cnqrrsResponseStatus = a})

instance NFData CreateNamedQueryResponse
