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
-- Module      : Network.AWS.Glacier.ListVaults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists all vaults owned by the calling user's account. The list returned in the response is ASCII-sorted by vault name.
--
--
-- By default, this operation returns up to 10 items. If there are more vaults to list, the response @marker@ field contains the vault Amazon Resource Name (ARN) at which to continue the list with a new List Vaults request; otherwise, the @marker@ field is @null@ . To return a list of vaults that begins at a specific vault, set the @marker@ request parameter to the vault ARN you obtained from a previous List Vaults request. You can also limit the number of vaults returned in the response by specifying the @limit@ parameter in the request.
--
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
--
-- For conceptual information and underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html Retrieving Vault Metadata in Amazon S3 Glacier> and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html List Vaults > in the /Amazon Glacier Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Glacier.ListVaults
  ( -- * Creating a Request
    listVaults,
    ListVaults,

    -- * Request Lenses
    lvLimit,
    lvMarker,
    lvAccountId,

    -- * Destructuring the Response
    listVaultsResponse,
    ListVaultsResponse,

    -- * Response Lenses
    lvrrsVaultList,
    lvrrsMarker,
    lvrrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides options to retrieve the vault list owned by the calling user's account. The list provides metadata information for each vault.
--
--
--
-- /See:/ 'listVaults' smart constructor.
data ListVaults = ListVaults'
  { _lvLimit ::
      !(Maybe Text),
    _lvMarker :: !(Maybe Text),
    _lvAccountId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListVaults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvLimit' - The maximum number of vaults to be returned. The default limit is 10. The number of vaults returned might be fewer than the specified limit, but the number of returned vaults never exceeds the limit.
--
-- * 'lvMarker' - A string used for pagination. The marker specifies the vault ARN after which the listing of vaults should begin.
--
-- * 'lvAccountId' - The @AccountId@ value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.
listVaults ::
  -- | 'lvAccountId'
  Text ->
  ListVaults
listVaults pAccountId_ =
  ListVaults'
    { _lvLimit = Nothing,
      _lvMarker = Nothing,
      _lvAccountId = pAccountId_
    }

-- | The maximum number of vaults to be returned. The default limit is 10. The number of vaults returned might be fewer than the specified limit, but the number of returned vaults never exceeds the limit.
lvLimit :: Lens' ListVaults (Maybe Text)
lvLimit = lens _lvLimit (\s a -> s {_lvLimit = a})

-- | A string used for pagination. The marker specifies the vault ARN after which the listing of vaults should begin.
lvMarker :: Lens' ListVaults (Maybe Text)
lvMarker = lens _lvMarker (\s a -> s {_lvMarker = a})

-- | The @AccountId@ value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.
lvAccountId :: Lens' ListVaults Text
lvAccountId = lens _lvAccountId (\s a -> s {_lvAccountId = a})

instance AWSPager ListVaults where
  page rq rs
    | stop (rs ^. lvrrsMarker) = Nothing
    | stop (rs ^. lvrrsVaultList) = Nothing
    | otherwise =
      Just $ rq & lvMarker .~ rs ^. lvrrsMarker

instance AWSRequest ListVaults where
  type Rs ListVaults = ListVaultsResponse
  request = get glacier
  response =
    receiveJSON
      ( \s h x ->
          ListVaultsResponse'
            <$> (x .?> "VaultList" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListVaults

instance NFData ListVaults

instance ToHeaders ListVaults where
  toHeaders = const mempty

instance ToPath ListVaults where
  toPath ListVaults' {..} =
    mconcat ["/", toBS _lvAccountId, "/vaults"]

instance ToQuery ListVaults where
  toQuery ListVaults' {..} =
    mconcat
      ["limit" =: _lvLimit, "marker" =: _lvMarker]

-- | Contains the Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'listVaultsResponse' smart constructor.
data ListVaultsResponse = ListVaultsResponse'
  { _lvrrsVaultList ::
      !(Maybe [DescribeVaultOutput]),
    _lvrrsMarker :: !(Maybe Text),
    _lvrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListVaultsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrrsVaultList' - List of vaults.
--
-- * 'lvrrsMarker' - The vault ARN at which to continue pagination of the results. You use the marker in another List Vaults request to obtain more vaults in the list.
--
-- * 'lvrrsResponseStatus' - -- | The response status code.
listVaultsResponse ::
  -- | 'lvrrsResponseStatus'
  Int ->
  ListVaultsResponse
listVaultsResponse pResponseStatus_ =
  ListVaultsResponse'
    { _lvrrsVaultList = Nothing,
      _lvrrsMarker = Nothing,
      _lvrrsResponseStatus = pResponseStatus_
    }

-- | List of vaults.
lvrrsVaultList :: Lens' ListVaultsResponse [DescribeVaultOutput]
lvrrsVaultList = lens _lvrrsVaultList (\s a -> s {_lvrrsVaultList = a}) . _Default . _Coerce

-- | The vault ARN at which to continue pagination of the results. You use the marker in another List Vaults request to obtain more vaults in the list.
lvrrsMarker :: Lens' ListVaultsResponse (Maybe Text)
lvrrsMarker = lens _lvrrsMarker (\s a -> s {_lvrrsMarker = a})

-- | -- | The response status code.
lvrrsResponseStatus :: Lens' ListVaultsResponse Int
lvrrsResponseStatus = lens _lvrrsResponseStatus (\s a -> s {_lvrrsResponseStatus = a})

instance NFData ListVaultsResponse
