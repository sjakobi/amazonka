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
-- Module      : Network.AWS.DirectoryService.DescribeTrusts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the trust relationships for this account.
--
--
-- If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
--
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeTrusts
  ( -- * Creating a Request
    describeTrusts,
    DescribeTrusts,

    -- * Request Lenses
    dtNextToken,
    dtDirectoryId,
    dtLimit,
    dtTrustIds,

    -- * Destructuring the Response
    describeTrustsResponse,
    DescribeTrustsResponse,

    -- * Response Lenses
    dtrrsNextToken,
    dtrrsTrusts,
    dtrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Describes the trust relationships for a particular AWS Managed Microsoft AD directory. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.
--
--
--
-- /See:/ 'describeTrusts' smart constructor.
data DescribeTrusts = DescribeTrusts'
  { _dtNextToken ::
      !(Maybe Text),
    _dtDirectoryId :: !(Maybe Text),
    _dtLimit :: !(Maybe Nat),
    _dtTrustIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTrusts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtNextToken' - The /DescribeTrustsResult.NextToken/ value from a previous call to 'DescribeTrusts' . Pass null if this is the first call.
--
-- * 'dtDirectoryId' - The Directory ID of the AWS directory that is a part of the requested trust relationship.
--
-- * 'dtLimit' - The maximum number of objects to return.
--
-- * 'dtTrustIds' - A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned. An empty list results in an @InvalidParameterException@ being thrown.
describeTrusts ::
  DescribeTrusts
describeTrusts =
  DescribeTrusts'
    { _dtNextToken = Nothing,
      _dtDirectoryId = Nothing,
      _dtLimit = Nothing,
      _dtTrustIds = Nothing
    }

-- | The /DescribeTrustsResult.NextToken/ value from a previous call to 'DescribeTrusts' . Pass null if this is the first call.
dtNextToken :: Lens' DescribeTrusts (Maybe Text)
dtNextToken = lens _dtNextToken (\s a -> s {_dtNextToken = a})

-- | The Directory ID of the AWS directory that is a part of the requested trust relationship.
dtDirectoryId :: Lens' DescribeTrusts (Maybe Text)
dtDirectoryId = lens _dtDirectoryId (\s a -> s {_dtDirectoryId = a})

-- | The maximum number of objects to return.
dtLimit :: Lens' DescribeTrusts (Maybe Natural)
dtLimit = lens _dtLimit (\s a -> s {_dtLimit = a}) . mapping _Nat

-- | A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned. An empty list results in an @InvalidParameterException@ being thrown.
dtTrustIds :: Lens' DescribeTrusts [Text]
dtTrustIds = lens _dtTrustIds (\s a -> s {_dtTrustIds = a}) . _Default . _Coerce

instance AWSPager DescribeTrusts where
  page rq rs
    | stop (rs ^. dtrrsNextToken) = Nothing
    | stop (rs ^. dtrrsTrusts) = Nothing
    | otherwise =
      Just $ rq & dtNextToken .~ rs ^. dtrrsNextToken

instance AWSRequest DescribeTrusts where
  type Rs DescribeTrusts = DescribeTrustsResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeTrustsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Trusts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrusts

instance NFData DescribeTrusts

instance ToHeaders DescribeTrusts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeTrusts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTrusts where
  toJSON DescribeTrusts' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dtNextToken,
            ("DirectoryId" .=) <$> _dtDirectoryId,
            ("Limit" .=) <$> _dtLimit,
            ("TrustIds" .=) <$> _dtTrustIds
          ]
      )

instance ToPath DescribeTrusts where
  toPath = const "/"

instance ToQuery DescribeTrusts where
  toQuery = const mempty

-- | The result of a DescribeTrust request.
--
--
--
-- /See:/ 'describeTrustsResponse' smart constructor.
data DescribeTrustsResponse = DescribeTrustsResponse'
  { _dtrrsNextToken ::
      !(Maybe Text),
    _dtrrsTrusts ::
      !(Maybe [Trust]),
    _dtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTrustsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsNextToken' - If not null, more results are available. Pass this value for the /NextToken/ parameter in a subsequent call to 'DescribeTrusts' to retrieve the next set of items.
--
-- * 'dtrrsTrusts' - The list of Trust objects that were retrieved. It is possible that this list contains less than the number of items specified in the /Limit/ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTrustsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTrustsResponse
describeTrustsResponse pResponseStatus_ =
  DescribeTrustsResponse'
    { _dtrrsNextToken = Nothing,
      _dtrrsTrusts = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | If not null, more results are available. Pass this value for the /NextToken/ parameter in a subsequent call to 'DescribeTrusts' to retrieve the next set of items.
dtrrsNextToken :: Lens' DescribeTrustsResponse (Maybe Text)
dtrrsNextToken = lens _dtrrsNextToken (\s a -> s {_dtrrsNextToken = a})

-- | The list of Trust objects that were retrieved. It is possible that this list contains less than the number of items specified in the /Limit/ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
dtrrsTrusts :: Lens' DescribeTrustsResponse [Trust]
dtrrsTrusts = lens _dtrrsTrusts (\s a -> s {_dtrrsTrusts = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTrustsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTrustsResponse
