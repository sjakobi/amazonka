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
-- Module      : Network.AWS.Redshift.DeleteTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.
module Network.AWS.Redshift.DeleteTags
  ( -- * Creating a Request
    deleteTags,
    DeleteTags,

    -- * Request Lenses
    dResourceName,
    dTagKeys,

    -- * Destructuring the Response
    deleteTagsResponse,
    DeleteTagsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the output from the @DeleteTags@ action.
--
--
--
-- /See:/ 'deleteTags' smart constructor.
data DeleteTags = DeleteTags'
  { _dResourceName ::
      !Text,
    _dTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dResourceName' - The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, @arn:aws:redshift:us-east-2:123456789:cluster:t1@ .
--
-- * 'dTagKeys' - The tag key that you want to delete.
deleteTags ::
  -- | 'dResourceName'
  Text ->
  DeleteTags
deleteTags pResourceName_ =
  DeleteTags'
    { _dResourceName = pResourceName_,
      _dTagKeys = mempty
    }

-- | The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, @arn:aws:redshift:us-east-2:123456789:cluster:t1@ .
dResourceName :: Lens' DeleteTags Text
dResourceName = lens _dResourceName (\s a -> s {_dResourceName = a})

-- | The tag key that you want to delete.
dTagKeys :: Lens' DeleteTags [Text]
dTagKeys = lens _dTagKeys (\s a -> s {_dTagKeys = a}) . _Coerce

instance AWSRequest DeleteTags where
  type Rs DeleteTags = DeleteTagsResponse
  request = postQuery redshift
  response = receiveNull DeleteTagsResponse'

instance Hashable DeleteTags

instance NFData DeleteTags

instance ToHeaders DeleteTags where
  toHeaders = const mempty

instance ToPath DeleteTags where
  toPath = const "/"

instance ToQuery DeleteTags where
  toQuery DeleteTags' {..} =
    mconcat
      [ "Action" =: ("DeleteTags" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ResourceName" =: _dResourceName,
        "TagKeys" =: toQueryList "TagKey" _dTagKeys
      ]

-- | /See:/ 'deleteTagsResponse' smart constructor.
data DeleteTagsResponse = DeleteTagsResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTagsResponse' with the minimum fields required to make a request.
deleteTagsResponse ::
  DeleteTagsResponse
deleteTagsResponse = DeleteTagsResponse'

instance NFData DeleteTagsResponse
