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
-- Module      : Network.AWS.SageMaker.DescribeCodeRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about the specified Git repository.
module Network.AWS.SageMaker.DescribeCodeRepository
  ( -- * Creating a Request
    describeCodeRepository,
    DescribeCodeRepository,

    -- * Request Lenses
    dCodeRepositoryName,

    -- * Destructuring the Response
    describeCodeRepositoryResponse,
    DescribeCodeRepositoryResponse,

    -- * Response Lenses
    dcrrrsGitConfig,
    dcrrrsResponseStatus,
    dcrrrsCodeRepositoryName,
    dcrrrsCodeRepositoryARN,
    dcrrrsCreationTime,
    dcrrrsLastModifiedTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeCodeRepository' smart constructor.
newtype DescribeCodeRepository = DescribeCodeRepository'
  { _dCodeRepositoryName ::
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

-- | Creates a value of 'DescribeCodeRepository' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCodeRepositoryName' - The name of the Git repository to describe.
describeCodeRepository ::
  -- | 'dCodeRepositoryName'
  Text ->
  DescribeCodeRepository
describeCodeRepository pCodeRepositoryName_ =
  DescribeCodeRepository'
    { _dCodeRepositoryName =
        pCodeRepositoryName_
    }

-- | The name of the Git repository to describe.
dCodeRepositoryName :: Lens' DescribeCodeRepository Text
dCodeRepositoryName = lens _dCodeRepositoryName (\s a -> s {_dCodeRepositoryName = a})

instance AWSRequest DescribeCodeRepository where
  type
    Rs DescribeCodeRepository =
      DescribeCodeRepositoryResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeCodeRepositoryResponse'
            <$> (x .?> "GitConfig")
            <*> (pure (fromEnum s))
            <*> (x .:> "CodeRepositoryName")
            <*> (x .:> "CodeRepositoryArn")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
      )

instance Hashable DescribeCodeRepository

instance NFData DescribeCodeRepository

instance ToHeaders DescribeCodeRepository where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeCodeRepository" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCodeRepository where
  toJSON DescribeCodeRepository' {..} =
    object
      ( catMaybes
          [ Just
              ("CodeRepositoryName" .= _dCodeRepositoryName)
          ]
      )

instance ToPath DescribeCodeRepository where
  toPath = const "/"

instance ToQuery DescribeCodeRepository where
  toQuery = const mempty

-- | /See:/ 'describeCodeRepositoryResponse' smart constructor.
data DescribeCodeRepositoryResponse = DescribeCodeRepositoryResponse'
  { _dcrrrsGitConfig ::
      !( Maybe
           GitConfig
       ),
    _dcrrrsResponseStatus ::
      !Int,
    _dcrrrsCodeRepositoryName ::
      !Text,
    _dcrrrsCodeRepositoryARN ::
      !Text,
    _dcrrrsCreationTime ::
      !POSIX,
    _dcrrrsLastModifiedTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCodeRepositoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrrsGitConfig' - Configuration details about the repository, including the URL where the repository is located, the default branch, and the Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the repository.
--
-- * 'dcrrrsResponseStatus' - -- | The response status code.
--
-- * 'dcrrrsCodeRepositoryName' - The name of the Git repository.
--
-- * 'dcrrrsCodeRepositoryARN' - The Amazon Resource Name (ARN) of the Git repository.
--
-- * 'dcrrrsCreationTime' - The date and time that the repository was created.
--
-- * 'dcrrrsLastModifiedTime' - The date and time that the repository was last changed.
describeCodeRepositoryResponse ::
  -- | 'dcrrrsResponseStatus'
  Int ->
  -- | 'dcrrrsCodeRepositoryName'
  Text ->
  -- | 'dcrrrsCodeRepositoryARN'
  Text ->
  -- | 'dcrrrsCreationTime'
  UTCTime ->
  -- | 'dcrrrsLastModifiedTime'
  UTCTime ->
  DescribeCodeRepositoryResponse
describeCodeRepositoryResponse
  pResponseStatus_
  pCodeRepositoryName_
  pCodeRepositoryARN_
  pCreationTime_
  pLastModifiedTime_ =
    DescribeCodeRepositoryResponse'
      { _dcrrrsGitConfig =
          Nothing,
        _dcrrrsResponseStatus = pResponseStatus_,
        _dcrrrsCodeRepositoryName =
          pCodeRepositoryName_,
        _dcrrrsCodeRepositoryARN =
          pCodeRepositoryARN_,
        _dcrrrsCreationTime =
          _Time # pCreationTime_,
        _dcrrrsLastModifiedTime =
          _Time # pLastModifiedTime_
      }

-- | Configuration details about the repository, including the URL where the repository is located, the default branch, and the Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the repository.
dcrrrsGitConfig :: Lens' DescribeCodeRepositoryResponse (Maybe GitConfig)
dcrrrsGitConfig = lens _dcrrrsGitConfig (\s a -> s {_dcrrrsGitConfig = a})

-- | -- | The response status code.
dcrrrsResponseStatus :: Lens' DescribeCodeRepositoryResponse Int
dcrrrsResponseStatus = lens _dcrrrsResponseStatus (\s a -> s {_dcrrrsResponseStatus = a})

-- | The name of the Git repository.
dcrrrsCodeRepositoryName :: Lens' DescribeCodeRepositoryResponse Text
dcrrrsCodeRepositoryName = lens _dcrrrsCodeRepositoryName (\s a -> s {_dcrrrsCodeRepositoryName = a})

-- | The Amazon Resource Name (ARN) of the Git repository.
dcrrrsCodeRepositoryARN :: Lens' DescribeCodeRepositoryResponse Text
dcrrrsCodeRepositoryARN = lens _dcrrrsCodeRepositoryARN (\s a -> s {_dcrrrsCodeRepositoryARN = a})

-- | The date and time that the repository was created.
dcrrrsCreationTime :: Lens' DescribeCodeRepositoryResponse UTCTime
dcrrrsCreationTime = lens _dcrrrsCreationTime (\s a -> s {_dcrrrsCreationTime = a}) . _Time

-- | The date and time that the repository was last changed.
dcrrrsLastModifiedTime :: Lens' DescribeCodeRepositoryResponse UTCTime
dcrrrsLastModifiedTime = lens _dcrrrsLastModifiedTime (\s a -> s {_dcrrrsLastModifiedTime = a}) . _Time

instance NFData DescribeCodeRepositoryResponse
