{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DevEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DevEndpoint where

import Network.AWS.Glue.Types.WorkerType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A development endpoint where a developer can remotely debug extract,
-- transform, and load (ETL) scripts.
--
-- /See:/ 'newDevEndpoint' smart constructor.
data DevEndpoint = DevEndpoint'
  { -- | A list of security group identifiers used in this @DevEndpoint@.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The status of the last update.
    lastUpdateStatus :: Prelude.Maybe Prelude.Text,
    -- | The public IP address used by this @DevEndpoint@. The @PublicAddress@
    -- field is present only when you create a non-virtual private cloud (VPC)
    -- @DevEndpoint@.
    publicAddress :: Prelude.Maybe Prelude.Text,
    -- | The current status of this @DevEndpoint@.
    status :: Prelude.Maybe Prelude.Text,
    -- | The name of the @DevEndpoint@.
    endpointName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role used in this
    -- @DevEndpoint@.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The YARN endpoint address used by this @DevEndpoint@.
    yarnEndpointAddress :: Prelude.Maybe Prelude.Text,
    -- | The name of the @SecurityConfiguration@ structure to be used with this
    -- @DevEndpoint@.
    securityConfiguration :: Prelude.Maybe Prelude.Text,
    -- | The public key to be used by this @DevEndpoint@ for authentication. This
    -- attribute is provided for backward compatibility because the recommended
    -- attribute to use is public keys.
    publicKey :: Prelude.Maybe Prelude.Text,
    -- | The point in time at which this DevEndpoint was created.
    createdTimestamp :: Prelude.Maybe Prelude.POSIX,
    -- | A private IP address to access the @DevEndpoint@ within a VPC if the
    -- @DevEndpoint@ is created within one. The @PrivateAddress@ field is
    -- present only when you create the @DevEndpoint@ within your VPC.
    privateAddress :: Prelude.Maybe Prelude.Text,
    -- | The point in time at which this @DevEndpoint@ was last modified.
    lastModifiedTimestamp :: Prelude.Maybe Prelude.POSIX,
    -- | The paths to one or more Python libraries in an Amazon S3 bucket that
    -- should be loaded in your @DevEndpoint@. Multiple values must be complete
    -- paths separated by a comma.
    --
    -- You can only use pure Python libraries with a @DevEndpoint@. Libraries
    -- that rely on C extensions, such as the
    -- <http://pandas.pydata.org/ pandas> Python data analysis library, are not
    -- currently supported.
    extraPythonLibsS3Path :: Prelude.Maybe Prelude.Text,
    -- | The number of workers of a defined @workerType@ that are allocated to
    -- the development endpoint.
    --
    -- The maximum number of workers you can define are 299 for @G.1X@, and 149
    -- for @G.2X@.
    numberOfWorkers :: Prelude.Maybe Prelude.Int,
    -- | The Apache Zeppelin port for the remote Apache Spark interpreter.
    zeppelinRemoteSparkInterpreterPort :: Prelude.Maybe Prelude.Int,
    -- | The AWS Availability Zone where this @DevEndpoint@ is located.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The reason for a current failure in this @DevEndpoint@.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | Glue version determines the versions of Apache Spark and Python that AWS
    -- Glue supports. The Python version indicates the version supported for
    -- running your ETL scripts on development endpoints.
    --
    -- For more information about the available AWS Glue versions and
    -- corresponding Spark and Python versions, see
    -- <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version>
    -- in the developer guide.
    --
    -- Development endpoints that are created without specifying a Glue version
    -- default to Glue 0.9.
    --
    -- You can specify a version of Python support for development endpoints by
    -- using the @Arguments@ parameter in the @CreateDevEndpoint@ or
    -- @UpdateDevEndpoint@ APIs. If no arguments are provided, the version
    -- defaults to Python 2.
    glueVersion :: Prelude.Maybe Prelude.Text,
    -- | The number of AWS Glue Data Processing Units (DPUs) allocated to this
    -- @DevEndpoint@.
    numberOfNodes :: Prelude.Maybe Prelude.Int,
    -- | The type of predefined worker that is allocated to the development
    -- endpoint. Accepts a value of Standard, G.1X, or G.2X.
    --
    -- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
    --     of memory and a 50GB disk, and 2 executors per worker.
    --
    -- -   For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    --     of memory, 64 GB disk), and provides 1 executor per worker. We
    --     recommend this worker type for memory-intensive jobs.
    --
    -- -   For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    --     of memory, 128 GB disk), and provides 1 executor per worker. We
    --     recommend this worker type for memory-intensive jobs.
    --
    -- Known issue: when a development endpoint is created with the @G.2X@
    -- @WorkerType@ configuration, the Spark drivers for the development
    -- endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    workerType :: Prelude.Maybe WorkerType,
    -- | The subnet ID for this @DevEndpoint@.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the virtual private cloud (VPC) used by this @DevEndpoint@.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | A map of arguments used to configure the @DevEndpoint@.
    --
    -- Valid arguments are:
    --
    -- -   @\"--enable-glue-datacatalog\": \"\"@
    --
    -- -   @\"GLUE_PYTHON_VERSION\": \"3\"@
    --
    -- -   @\"GLUE_PYTHON_VERSION\": \"2\"@
    --
    -- You can specify a version of Python support for development endpoints by
    -- using the @Arguments@ parameter in the @CreateDevEndpoint@ or
    -- @UpdateDevEndpoint@ APIs. If no arguments are provided, the version
    -- defaults to Python 2.
    arguments :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A list of public keys to be used by the @DevEndpoints@ for
    -- authentication. Using this attribute is preferred over a single public
    -- key because the public keys allow you to have a different private key
    -- per client.
    --
    -- If you previously created an endpoint with a public key, you must remove
    -- that key to be able to set a list of public keys. Call the
    -- @UpdateDevEndpoint@ API operation with the public key content in the
    -- @deletePublicKeys@ attribute, and the list of new keys in the
    -- @addPublicKeys@ attribute.
    publicKeys :: Prelude.Maybe [Prelude.Text],
    -- | The path to one or more Java @.jar@ files in an S3 bucket that should be
    -- loaded in your @DevEndpoint@.
    --
    -- You can only use pure Java\/Scala libraries with a @DevEndpoint@.
    extraJarsS3Path :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DevEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'devEndpoint_securityGroupIds' - A list of security group identifiers used in this @DevEndpoint@.
--
-- 'lastUpdateStatus', 'devEndpoint_lastUpdateStatus' - The status of the last update.
--
-- 'publicAddress', 'devEndpoint_publicAddress' - The public IP address used by this @DevEndpoint@. The @PublicAddress@
-- field is present only when you create a non-virtual private cloud (VPC)
-- @DevEndpoint@.
--
-- 'status', 'devEndpoint_status' - The current status of this @DevEndpoint@.
--
-- 'endpointName', 'devEndpoint_endpointName' - The name of the @DevEndpoint@.
--
-- 'roleArn', 'devEndpoint_roleArn' - The Amazon Resource Name (ARN) of the IAM role used in this
-- @DevEndpoint@.
--
-- 'yarnEndpointAddress', 'devEndpoint_yarnEndpointAddress' - The YARN endpoint address used by this @DevEndpoint@.
--
-- 'securityConfiguration', 'devEndpoint_securityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this
-- @DevEndpoint@.
--
-- 'publicKey', 'devEndpoint_publicKey' - The public key to be used by this @DevEndpoint@ for authentication. This
-- attribute is provided for backward compatibility because the recommended
-- attribute to use is public keys.
--
-- 'createdTimestamp', 'devEndpoint_createdTimestamp' - The point in time at which this DevEndpoint was created.
--
-- 'privateAddress', 'devEndpoint_privateAddress' - A private IP address to access the @DevEndpoint@ within a VPC if the
-- @DevEndpoint@ is created within one. The @PrivateAddress@ field is
-- present only when you create the @DevEndpoint@ within your VPC.
--
-- 'lastModifiedTimestamp', 'devEndpoint_lastModifiedTimestamp' - The point in time at which this @DevEndpoint@ was last modified.
--
-- 'extraPythonLibsS3Path', 'devEndpoint_extraPythonLibsS3Path' - The paths to one or more Python libraries in an Amazon S3 bucket that
-- should be loaded in your @DevEndpoint@. Multiple values must be complete
-- paths separated by a comma.
--
-- You can only use pure Python libraries with a @DevEndpoint@. Libraries
-- that rely on C extensions, such as the
-- <http://pandas.pydata.org/ pandas> Python data analysis library, are not
-- currently supported.
--
-- 'numberOfWorkers', 'devEndpoint_numberOfWorkers' - The number of workers of a defined @workerType@ that are allocated to
-- the development endpoint.
--
-- The maximum number of workers you can define are 299 for @G.1X@, and 149
-- for @G.2X@.
--
-- 'zeppelinRemoteSparkInterpreterPort', 'devEndpoint_zeppelinRemoteSparkInterpreterPort' - The Apache Zeppelin port for the remote Apache Spark interpreter.
--
-- 'availabilityZone', 'devEndpoint_availabilityZone' - The AWS Availability Zone where this @DevEndpoint@ is located.
--
-- 'failureReason', 'devEndpoint_failureReason' - The reason for a current failure in this @DevEndpoint@.
--
-- 'glueVersion', 'devEndpoint_glueVersion' - Glue version determines the versions of Apache Spark and Python that AWS
-- Glue supports. The Python version indicates the version supported for
-- running your ETL scripts on development endpoints.
--
-- For more information about the available AWS Glue versions and
-- corresponding Spark and Python versions, see
-- <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version>
-- in the developer guide.
--
-- Development endpoints that are created without specifying a Glue version
-- default to Glue 0.9.
--
-- You can specify a version of Python support for development endpoints by
-- using the @Arguments@ parameter in the @CreateDevEndpoint@ or
-- @UpdateDevEndpoint@ APIs. If no arguments are provided, the version
-- defaults to Python 2.
--
-- 'numberOfNodes', 'devEndpoint_numberOfNodes' - The number of AWS Glue Data Processing Units (DPUs) allocated to this
-- @DevEndpoint@.
--
-- 'workerType', 'devEndpoint_workerType' - The type of predefined worker that is allocated to the development
-- endpoint. Accepts a value of Standard, G.1X, or G.2X.
--
-- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
--     of memory and a 50GB disk, and 2 executors per worker.
--
-- -   For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
--     of memory, 64 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- -   For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
--     of memory, 128 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- Known issue: when a development endpoint is created with the @G.2X@
-- @WorkerType@ configuration, the Spark drivers for the development
-- endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
--
-- 'subnetId', 'devEndpoint_subnetId' - The subnet ID for this @DevEndpoint@.
--
-- 'vpcId', 'devEndpoint_vpcId' - The ID of the virtual private cloud (VPC) used by this @DevEndpoint@.
--
-- 'arguments', 'devEndpoint_arguments' - A map of arguments used to configure the @DevEndpoint@.
--
-- Valid arguments are:
--
-- -   @\"--enable-glue-datacatalog\": \"\"@
--
-- -   @\"GLUE_PYTHON_VERSION\": \"3\"@
--
-- -   @\"GLUE_PYTHON_VERSION\": \"2\"@
--
-- You can specify a version of Python support for development endpoints by
-- using the @Arguments@ parameter in the @CreateDevEndpoint@ or
-- @UpdateDevEndpoint@ APIs. If no arguments are provided, the version
-- defaults to Python 2.
--
-- 'publicKeys', 'devEndpoint_publicKeys' - A list of public keys to be used by the @DevEndpoints@ for
-- authentication. Using this attribute is preferred over a single public
-- key because the public keys allow you to have a different private key
-- per client.
--
-- If you previously created an endpoint with a public key, you must remove
-- that key to be able to set a list of public keys. Call the
-- @UpdateDevEndpoint@ API operation with the public key content in the
-- @deletePublicKeys@ attribute, and the list of new keys in the
-- @addPublicKeys@ attribute.
--
-- 'extraJarsS3Path', 'devEndpoint_extraJarsS3Path' - The path to one or more Java @.jar@ files in an S3 bucket that should be
-- loaded in your @DevEndpoint@.
--
-- You can only use pure Java\/Scala libraries with a @DevEndpoint@.
newDevEndpoint ::
  DevEndpoint
newDevEndpoint =
  DevEndpoint'
    { securityGroupIds = Prelude.Nothing,
      lastUpdateStatus = Prelude.Nothing,
      publicAddress = Prelude.Nothing,
      status = Prelude.Nothing,
      endpointName = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      yarnEndpointAddress = Prelude.Nothing,
      securityConfiguration = Prelude.Nothing,
      publicKey = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      privateAddress = Prelude.Nothing,
      lastModifiedTimestamp = Prelude.Nothing,
      extraPythonLibsS3Path = Prelude.Nothing,
      numberOfWorkers = Prelude.Nothing,
      zeppelinRemoteSparkInterpreterPort = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      glueVersion = Prelude.Nothing,
      numberOfNodes = Prelude.Nothing,
      workerType = Prelude.Nothing,
      subnetId = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      arguments = Prelude.Nothing,
      publicKeys = Prelude.Nothing,
      extraJarsS3Path = Prelude.Nothing
    }

-- | A list of security group identifiers used in this @DevEndpoint@.
devEndpoint_securityGroupIds :: Lens.Lens' DevEndpoint (Prelude.Maybe [Prelude.Text])
devEndpoint_securityGroupIds = Lens.lens (\DevEndpoint' {securityGroupIds} -> securityGroupIds) (\s@DevEndpoint' {} a -> s {securityGroupIds = a} :: DevEndpoint) Prelude.. Lens.mapping Prelude._Coerce

-- | The status of the last update.
devEndpoint_lastUpdateStatus :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_lastUpdateStatus = Lens.lens (\DevEndpoint' {lastUpdateStatus} -> lastUpdateStatus) (\s@DevEndpoint' {} a -> s {lastUpdateStatus = a} :: DevEndpoint)

-- | The public IP address used by this @DevEndpoint@. The @PublicAddress@
-- field is present only when you create a non-virtual private cloud (VPC)
-- @DevEndpoint@.
devEndpoint_publicAddress :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_publicAddress = Lens.lens (\DevEndpoint' {publicAddress} -> publicAddress) (\s@DevEndpoint' {} a -> s {publicAddress = a} :: DevEndpoint)

-- | The current status of this @DevEndpoint@.
devEndpoint_status :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_status = Lens.lens (\DevEndpoint' {status} -> status) (\s@DevEndpoint' {} a -> s {status = a} :: DevEndpoint)

-- | The name of the @DevEndpoint@.
devEndpoint_endpointName :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_endpointName = Lens.lens (\DevEndpoint' {endpointName} -> endpointName) (\s@DevEndpoint' {} a -> s {endpointName = a} :: DevEndpoint)

-- | The Amazon Resource Name (ARN) of the IAM role used in this
-- @DevEndpoint@.
devEndpoint_roleArn :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_roleArn = Lens.lens (\DevEndpoint' {roleArn} -> roleArn) (\s@DevEndpoint' {} a -> s {roleArn = a} :: DevEndpoint)

-- | The YARN endpoint address used by this @DevEndpoint@.
devEndpoint_yarnEndpointAddress :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_yarnEndpointAddress = Lens.lens (\DevEndpoint' {yarnEndpointAddress} -> yarnEndpointAddress) (\s@DevEndpoint' {} a -> s {yarnEndpointAddress = a} :: DevEndpoint)

-- | The name of the @SecurityConfiguration@ structure to be used with this
-- @DevEndpoint@.
devEndpoint_securityConfiguration :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_securityConfiguration = Lens.lens (\DevEndpoint' {securityConfiguration} -> securityConfiguration) (\s@DevEndpoint' {} a -> s {securityConfiguration = a} :: DevEndpoint)

-- | The public key to be used by this @DevEndpoint@ for authentication. This
-- attribute is provided for backward compatibility because the recommended
-- attribute to use is public keys.
devEndpoint_publicKey :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_publicKey = Lens.lens (\DevEndpoint' {publicKey} -> publicKey) (\s@DevEndpoint' {} a -> s {publicKey = a} :: DevEndpoint)

-- | The point in time at which this DevEndpoint was created.
devEndpoint_createdTimestamp :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.UTCTime)
devEndpoint_createdTimestamp = Lens.lens (\DevEndpoint' {createdTimestamp} -> createdTimestamp) (\s@DevEndpoint' {} a -> s {createdTimestamp = a} :: DevEndpoint) Prelude.. Lens.mapping Prelude._Time

-- | A private IP address to access the @DevEndpoint@ within a VPC if the
-- @DevEndpoint@ is created within one. The @PrivateAddress@ field is
-- present only when you create the @DevEndpoint@ within your VPC.
devEndpoint_privateAddress :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_privateAddress = Lens.lens (\DevEndpoint' {privateAddress} -> privateAddress) (\s@DevEndpoint' {} a -> s {privateAddress = a} :: DevEndpoint)

-- | The point in time at which this @DevEndpoint@ was last modified.
devEndpoint_lastModifiedTimestamp :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.UTCTime)
devEndpoint_lastModifiedTimestamp = Lens.lens (\DevEndpoint' {lastModifiedTimestamp} -> lastModifiedTimestamp) (\s@DevEndpoint' {} a -> s {lastModifiedTimestamp = a} :: DevEndpoint) Prelude.. Lens.mapping Prelude._Time

-- | The paths to one or more Python libraries in an Amazon S3 bucket that
-- should be loaded in your @DevEndpoint@. Multiple values must be complete
-- paths separated by a comma.
--
-- You can only use pure Python libraries with a @DevEndpoint@. Libraries
-- that rely on C extensions, such as the
-- <http://pandas.pydata.org/ pandas> Python data analysis library, are not
-- currently supported.
devEndpoint_extraPythonLibsS3Path :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_extraPythonLibsS3Path = Lens.lens (\DevEndpoint' {extraPythonLibsS3Path} -> extraPythonLibsS3Path) (\s@DevEndpoint' {} a -> s {extraPythonLibsS3Path = a} :: DevEndpoint)

-- | The number of workers of a defined @workerType@ that are allocated to
-- the development endpoint.
--
-- The maximum number of workers you can define are 299 for @G.1X@, and 149
-- for @G.2X@.
devEndpoint_numberOfWorkers :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Int)
devEndpoint_numberOfWorkers = Lens.lens (\DevEndpoint' {numberOfWorkers} -> numberOfWorkers) (\s@DevEndpoint' {} a -> s {numberOfWorkers = a} :: DevEndpoint)

-- | The Apache Zeppelin port for the remote Apache Spark interpreter.
devEndpoint_zeppelinRemoteSparkInterpreterPort :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Int)
devEndpoint_zeppelinRemoteSparkInterpreterPort = Lens.lens (\DevEndpoint' {zeppelinRemoteSparkInterpreterPort} -> zeppelinRemoteSparkInterpreterPort) (\s@DevEndpoint' {} a -> s {zeppelinRemoteSparkInterpreterPort = a} :: DevEndpoint)

-- | The AWS Availability Zone where this @DevEndpoint@ is located.
devEndpoint_availabilityZone :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_availabilityZone = Lens.lens (\DevEndpoint' {availabilityZone} -> availabilityZone) (\s@DevEndpoint' {} a -> s {availabilityZone = a} :: DevEndpoint)

-- | The reason for a current failure in this @DevEndpoint@.
devEndpoint_failureReason :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_failureReason = Lens.lens (\DevEndpoint' {failureReason} -> failureReason) (\s@DevEndpoint' {} a -> s {failureReason = a} :: DevEndpoint)

-- | Glue version determines the versions of Apache Spark and Python that AWS
-- Glue supports. The Python version indicates the version supported for
-- running your ETL scripts on development endpoints.
--
-- For more information about the available AWS Glue versions and
-- corresponding Spark and Python versions, see
-- <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version>
-- in the developer guide.
--
-- Development endpoints that are created without specifying a Glue version
-- default to Glue 0.9.
--
-- You can specify a version of Python support for development endpoints by
-- using the @Arguments@ parameter in the @CreateDevEndpoint@ or
-- @UpdateDevEndpoint@ APIs. If no arguments are provided, the version
-- defaults to Python 2.
devEndpoint_glueVersion :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_glueVersion = Lens.lens (\DevEndpoint' {glueVersion} -> glueVersion) (\s@DevEndpoint' {} a -> s {glueVersion = a} :: DevEndpoint)

-- | The number of AWS Glue Data Processing Units (DPUs) allocated to this
-- @DevEndpoint@.
devEndpoint_numberOfNodes :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Int)
devEndpoint_numberOfNodes = Lens.lens (\DevEndpoint' {numberOfNodes} -> numberOfNodes) (\s@DevEndpoint' {} a -> s {numberOfNodes = a} :: DevEndpoint)

-- | The type of predefined worker that is allocated to the development
-- endpoint. Accepts a value of Standard, G.1X, or G.2X.
--
-- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
--     of memory and a 50GB disk, and 2 executors per worker.
--
-- -   For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
--     of memory, 64 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- -   For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
--     of memory, 128 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- Known issue: when a development endpoint is created with the @G.2X@
-- @WorkerType@ configuration, the Spark drivers for the development
-- endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
devEndpoint_workerType :: Lens.Lens' DevEndpoint (Prelude.Maybe WorkerType)
devEndpoint_workerType = Lens.lens (\DevEndpoint' {workerType} -> workerType) (\s@DevEndpoint' {} a -> s {workerType = a} :: DevEndpoint)

-- | The subnet ID for this @DevEndpoint@.
devEndpoint_subnetId :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_subnetId = Lens.lens (\DevEndpoint' {subnetId} -> subnetId) (\s@DevEndpoint' {} a -> s {subnetId = a} :: DevEndpoint)

-- | The ID of the virtual private cloud (VPC) used by this @DevEndpoint@.
devEndpoint_vpcId :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_vpcId = Lens.lens (\DevEndpoint' {vpcId} -> vpcId) (\s@DevEndpoint' {} a -> s {vpcId = a} :: DevEndpoint)

-- | A map of arguments used to configure the @DevEndpoint@.
--
-- Valid arguments are:
--
-- -   @\"--enable-glue-datacatalog\": \"\"@
--
-- -   @\"GLUE_PYTHON_VERSION\": \"3\"@
--
-- -   @\"GLUE_PYTHON_VERSION\": \"2\"@
--
-- You can specify a version of Python support for development endpoints by
-- using the @Arguments@ parameter in the @CreateDevEndpoint@ or
-- @UpdateDevEndpoint@ APIs. If no arguments are provided, the version
-- defaults to Python 2.
devEndpoint_arguments :: Lens.Lens' DevEndpoint (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
devEndpoint_arguments = Lens.lens (\DevEndpoint' {arguments} -> arguments) (\s@DevEndpoint' {} a -> s {arguments = a} :: DevEndpoint) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of public keys to be used by the @DevEndpoints@ for
-- authentication. Using this attribute is preferred over a single public
-- key because the public keys allow you to have a different private key
-- per client.
--
-- If you previously created an endpoint with a public key, you must remove
-- that key to be able to set a list of public keys. Call the
-- @UpdateDevEndpoint@ API operation with the public key content in the
-- @deletePublicKeys@ attribute, and the list of new keys in the
-- @addPublicKeys@ attribute.
devEndpoint_publicKeys :: Lens.Lens' DevEndpoint (Prelude.Maybe [Prelude.Text])
devEndpoint_publicKeys = Lens.lens (\DevEndpoint' {publicKeys} -> publicKeys) (\s@DevEndpoint' {} a -> s {publicKeys = a} :: DevEndpoint) Prelude.. Lens.mapping Prelude._Coerce

-- | The path to one or more Java @.jar@ files in an S3 bucket that should be
-- loaded in your @DevEndpoint@.
--
-- You can only use pure Java\/Scala libraries with a @DevEndpoint@.
devEndpoint_extraJarsS3Path :: Lens.Lens' DevEndpoint (Prelude.Maybe Prelude.Text)
devEndpoint_extraJarsS3Path = Lens.lens (\DevEndpoint' {extraJarsS3Path} -> extraJarsS3Path) (\s@DevEndpoint' {} a -> s {extraJarsS3Path = a} :: DevEndpoint)

instance Prelude.FromJSON DevEndpoint where
  parseJSON =
    Prelude.withObject
      "DevEndpoint"
      ( \x ->
          DevEndpoint'
            Prelude.<$> ( x Prelude..:? "SecurityGroupIds"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "LastUpdateStatus")
            Prelude.<*> (x Prelude..:? "PublicAddress")
            Prelude.<*> (x Prelude..:? "Status")
            Prelude.<*> (x Prelude..:? "EndpointName")
            Prelude.<*> (x Prelude..:? "RoleArn")
            Prelude.<*> (x Prelude..:? "YarnEndpointAddress")
            Prelude.<*> (x Prelude..:? "SecurityConfiguration")
            Prelude.<*> (x Prelude..:? "PublicKey")
            Prelude.<*> (x Prelude..:? "CreatedTimestamp")
            Prelude.<*> (x Prelude..:? "PrivateAddress")
            Prelude.<*> (x Prelude..:? "LastModifiedTimestamp")
            Prelude.<*> (x Prelude..:? "ExtraPythonLibsS3Path")
            Prelude.<*> (x Prelude..:? "NumberOfWorkers")
            Prelude.<*> (x Prelude..:? "ZeppelinRemoteSparkInterpreterPort")
            Prelude.<*> (x Prelude..:? "AvailabilityZone")
            Prelude.<*> (x Prelude..:? "FailureReason")
            Prelude.<*> (x Prelude..:? "GlueVersion")
            Prelude.<*> (x Prelude..:? "NumberOfNodes")
            Prelude.<*> (x Prelude..:? "WorkerType")
            Prelude.<*> (x Prelude..:? "SubnetId")
            Prelude.<*> (x Prelude..:? "VpcId")
            Prelude.<*> ( x Prelude..:? "Arguments"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "PublicKeys"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "ExtraJarsS3Path")
      )

instance Prelude.Hashable DevEndpoint

instance Prelude.NFData DevEndpoint
