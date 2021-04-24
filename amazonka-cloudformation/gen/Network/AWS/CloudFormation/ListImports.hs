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
-- Module      : Network.AWS.CloudFormation.ListImports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see 'ListExports' .
--
--
-- For more information about importing an exported output value, see the <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html @Fn::ImportValue@ > function.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListImports
  ( -- * Creating a Request
    listImports,
    ListImports,

    -- * Request Lenses
    liNextToken,
    liExportName,

    -- * Destructuring the Response
    listImportsResponse,
    ListImportsResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsImports,
    lirrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listImports' smart constructor.
data ListImports = ListImports'
  { _liNextToken ::
      !(Maybe Text),
    _liExportName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - A string (provided by the 'ListImports' response output) that identifies the next page of stacks that are importing the specified exported output value.
--
-- * 'liExportName' - The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value.
listImports ::
  -- | 'liExportName'
  Text ->
  ListImports
listImports pExportName_ =
  ListImports'
    { _liNextToken = Nothing,
      _liExportName = pExportName_
    }

-- | A string (provided by the 'ListImports' response output) that identifies the next page of stacks that are importing the specified exported output value.
liNextToken :: Lens' ListImports (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value.
liExportName :: Lens' ListImports Text
liExportName = lens _liExportName (\s a -> s {_liExportName = a})

instance AWSPager ListImports where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsImports) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListImports where
  type Rs ListImports = ListImportsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListImportsResult"
      ( \s h x ->
          ListImportsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Imports" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListImports

instance NFData ListImports

instance ToHeaders ListImports where
  toHeaders = const mempty

instance ToPath ListImports where
  toPath = const "/"

instance ToQuery ListImports where
  toQuery ListImports' {..} =
    mconcat
      [ "Action" =: ("ListImports" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _liNextToken,
        "ExportName" =: _liExportName
      ]

-- | /See:/ 'listImportsResponse' smart constructor.
data ListImportsResponse = ListImportsResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsImports ::
      !(Maybe [Text]),
    _lirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListImportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - A string that identifies the next page of exports. If there is no additional page, this value is null.
--
-- * 'lirrsImports' - A list of stack names that are importing the specified exported output value.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listImportsResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListImportsResponse
listImportsResponse pResponseStatus_ =
  ListImportsResponse'
    { _lirrsNextToken = Nothing,
      _lirrsImports = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | A string that identifies the next page of exports. If there is no additional page, this value is null.
lirrsNextToken :: Lens' ListImportsResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | A list of stack names that are importing the specified exported output value.
lirrsImports :: Lens' ListImportsResponse [Text]
lirrsImports = lens _lirrsImports (\s a -> s {_lirrsImports = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListImportsResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListImportsResponse
