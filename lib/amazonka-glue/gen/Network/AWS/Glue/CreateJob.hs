{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.CreateJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job definition.
module Network.AWS.Glue.CreateJob
    (
    -- * Creating a request
      CreateJob (..)
    , mkCreateJob
    -- ** Request lenses
    , cjName
    , cjRole
    , cjCommand
    , cjAllocatedCapacity
    , cjConnections
    , cjDefaultArguments
    , cjDescription
    , cjExecutionProperty
    , cjGlueVersion
    , cjLogUri
    , cjMaxCapacity
    , cjMaxRetries
    , cjNonOverridableArguments
    , cjNotificationProperty
    , cjNumberOfWorkers
    , cjSecurityConfiguration
    , cjTags
    , cjTimeout
    , cjWorkerType

    -- * Destructuring the response
    , CreateJobResponse (..)
    , mkCreateJobResponse
    -- ** Response lenses
    , cjrrsName
    , cjrrsResponseStatus
    ) where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateJob' smart constructor.
data CreateJob = CreateJob'
  { name :: Types.Name
    -- ^ The name you assign to this job definition. It must be unique in your account.
  , role' :: Types.Role
    -- ^ The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
  , command :: Types.JobCommand
    -- ^ The @JobCommand@ that executes this job.
  , allocatedCapacity :: Core.Maybe Core.Int
    -- ^ This parameter is deprecated. Use @MaxCapacity@ instead.
--
-- The number of AWS Glue data processing units (DPUs) to allocate to this Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
  , connections :: Core.Maybe Types.ConnectionsList
    -- ^ The connections used for this job.
  , defaultArguments :: Core.Maybe (Core.HashMap Types.GenericString Types.GenericString)
    -- ^ The default arguments for this job.
--
-- You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
-- For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide.
-- For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
  , description :: Core.Maybe Types.Description
    -- ^ Description of the job being defined.
  , executionProperty :: Core.Maybe Types.ExecutionProperty
    -- ^ An @ExecutionProperty@ specifying the maximum number of concurrent runs allowed for this job.
  , glueVersion :: Core.Maybe Types.GlueVersionString
    -- ^ Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark. 
--
-- For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide.
-- Jobs that are created without specifying a Glue version default to Glue 0.9.
  , logUri :: Core.Maybe Types.LogUri
    -- ^ This field is reserved for future use.
  , maxCapacity :: Core.Maybe Core.Double
    -- ^ The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ .
-- The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job or an Apache Spark ETL job:
--
--     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.
--
--
--     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl") or Apache Spark streaming ETL job (@JobCommand.Name@ ="gluestreaming"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
--
--
  , maxRetries :: Core.Maybe Core.Int
    -- ^ The maximum number of times to retry this job if it fails.
  , nonOverridableArguments :: Core.Maybe (Core.HashMap Types.GenericString Types.GenericString)
    -- ^ Non-overridable arguments for this job, specified as name-value pairs.
  , notificationProperty :: Core.Maybe Types.NotificationProperty
    -- ^ Specifies configuration properties of a job notification.
  , numberOfWorkers :: Core.Maybe Core.Int
    -- ^ The number of workers of a defined @workerType@ that are allocated when a job runs.
--
-- The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ . 
  , securityConfiguration :: Core.Maybe Types.NameString
    -- ^ The name of the @SecurityConfiguration@ structure to be used with this job.
  , tags :: Core.Maybe (Core.HashMap Types.TagKey Types.TagValue)
    -- ^ The tags to use with this job. You may use tags to limit access to the job. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
  , timeout :: Core.Maybe Core.Natural
    -- ^ The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
  , workerType :: Core.Maybe Types.WorkerType
    -- ^ The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.
--
--
--     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.
--
--
--     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
--
--
--     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
--
--
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateJob' value with any optional fields omitted.
mkCreateJob
    :: Types.Name -- ^ 'name'
    -> Types.Role -- ^ 'role\''
    -> Types.JobCommand -- ^ 'command'
    -> CreateJob
mkCreateJob name role' command
  = CreateJob'{name, role', command,
               allocatedCapacity = Core.Nothing, connections = Core.Nothing,
               defaultArguments = Core.Nothing, description = Core.Nothing,
               executionProperty = Core.Nothing, glueVersion = Core.Nothing,
               logUri = Core.Nothing, maxCapacity = Core.Nothing,
               maxRetries = Core.Nothing, nonOverridableArguments = Core.Nothing,
               notificationProperty = Core.Nothing,
               numberOfWorkers = Core.Nothing,
               securityConfiguration = Core.Nothing, tags = Core.Nothing,
               timeout = Core.Nothing, workerType = Core.Nothing}

-- | The name you assign to this job definition. It must be unique in your account.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjName :: Lens.Lens' CreateJob Types.Name
cjName = Lens.field @"name"
{-# INLINEABLE cjName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The name or Amazon Resource Name (ARN) of the IAM role associated with this job.
--
-- /Note:/ Consider using 'role'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjRole :: Lens.Lens' CreateJob Types.Role
cjRole = Lens.field @"role'"
{-# INLINEABLE cjRole #-}
{-# DEPRECATED role' "Use generic-lens or generic-optics with 'role'' instead"  #-}

-- | The @JobCommand@ that executes this job.
--
-- /Note:/ Consider using 'command' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjCommand :: Lens.Lens' CreateJob Types.JobCommand
cjCommand = Lens.field @"command"
{-# INLINEABLE cjCommand #-}
{-# DEPRECATED command "Use generic-lens or generic-optics with 'command' instead"  #-}

-- | This parameter is deprecated. Use @MaxCapacity@ instead.
--
-- The number of AWS Glue data processing units (DPUs) to allocate to this Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- /Note:/ Consider using 'allocatedCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjAllocatedCapacity :: Lens.Lens' CreateJob (Core.Maybe Core.Int)
cjAllocatedCapacity = Lens.field @"allocatedCapacity"
{-# INLINEABLE cjAllocatedCapacity #-}
{-# DEPRECATED allocatedCapacity "Use generic-lens or generic-optics with 'allocatedCapacity' instead"  #-}

-- | The connections used for this job.
--
-- /Note:/ Consider using 'connections' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjConnections :: Lens.Lens' CreateJob (Core.Maybe Types.ConnectionsList)
cjConnections = Lens.field @"connections"
{-# INLINEABLE cjConnections #-}
{-# DEPRECATED connections "Use generic-lens or generic-optics with 'connections' instead"  #-}

-- | The default arguments for this job.
--
-- You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
-- For information about how to specify and consume your own Job arguments, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling AWS Glue APIs in Python> topic in the developer guide.
-- For information about the key-value pairs that AWS Glue consumes to set up your job, see the <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by AWS Glue> topic in the developer guide.
--
-- /Note:/ Consider using 'defaultArguments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjDefaultArguments :: Lens.Lens' CreateJob (Core.Maybe (Core.HashMap Types.GenericString Types.GenericString))
cjDefaultArguments = Lens.field @"defaultArguments"
{-# INLINEABLE cjDefaultArguments #-}
{-# DEPRECATED defaultArguments "Use generic-lens or generic-optics with 'defaultArguments' instead"  #-}

-- | Description of the job being defined.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjDescription :: Lens.Lens' CreateJob (Core.Maybe Types.Description)
cjDescription = Lens.field @"description"
{-# INLINEABLE cjDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | An @ExecutionProperty@ specifying the maximum number of concurrent runs allowed for this job.
--
-- /Note:/ Consider using 'executionProperty' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjExecutionProperty :: Lens.Lens' CreateJob (Core.Maybe Types.ExecutionProperty)
cjExecutionProperty = Lens.field @"executionProperty"
{-# INLINEABLE cjExecutionProperty #-}
{-# DEPRECATED executionProperty "Use generic-lens or generic-optics with 'executionProperty' instead"  #-}

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark. 
--
-- For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide.
-- Jobs that are created without specifying a Glue version default to Glue 0.9.
--
-- /Note:/ Consider using 'glueVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjGlueVersion :: Lens.Lens' CreateJob (Core.Maybe Types.GlueVersionString)
cjGlueVersion = Lens.field @"glueVersion"
{-# INLINEABLE cjGlueVersion #-}
{-# DEPRECATED glueVersion "Use generic-lens or generic-optics with 'glueVersion' instead"  #-}

-- | This field is reserved for future use.
--
-- /Note:/ Consider using 'logUri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjLogUri :: Lens.Lens' CreateJob (Core.Maybe Types.LogUri)
cjLogUri = Lens.field @"logUri"
{-# INLINEABLE cjLogUri #-}
{-# DEPRECATED logUri "Use generic-lens or generic-optics with 'logUri' instead"  #-}

-- | The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <https://aws.amazon.com/glue/pricing/ AWS Glue pricing page> .
--
-- Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@ .
-- The value that can be allocated for @MaxCapacity@ depends on whether you are running a Python shell job or an Apache Spark ETL job:
--
--     * When you specify a Python shell job (@JobCommand.Name@ ="pythonshell"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.
--
--
--     * When you specify an Apache Spark ETL job (@JobCommand.Name@ ="glueetl") or Apache Spark streaming ETL job (@JobCommand.Name@ ="gluestreaming"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.
--
--
--
-- /Note:/ Consider using 'maxCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjMaxCapacity :: Lens.Lens' CreateJob (Core.Maybe Core.Double)
cjMaxCapacity = Lens.field @"maxCapacity"
{-# INLINEABLE cjMaxCapacity #-}
{-# DEPRECATED maxCapacity "Use generic-lens or generic-optics with 'maxCapacity' instead"  #-}

-- | The maximum number of times to retry this job if it fails.
--
-- /Note:/ Consider using 'maxRetries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjMaxRetries :: Lens.Lens' CreateJob (Core.Maybe Core.Int)
cjMaxRetries = Lens.field @"maxRetries"
{-# INLINEABLE cjMaxRetries #-}
{-# DEPRECATED maxRetries "Use generic-lens or generic-optics with 'maxRetries' instead"  #-}

-- | Non-overridable arguments for this job, specified as name-value pairs.
--
-- /Note:/ Consider using 'nonOverridableArguments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjNonOverridableArguments :: Lens.Lens' CreateJob (Core.Maybe (Core.HashMap Types.GenericString Types.GenericString))
cjNonOverridableArguments = Lens.field @"nonOverridableArguments"
{-# INLINEABLE cjNonOverridableArguments #-}
{-# DEPRECATED nonOverridableArguments "Use generic-lens or generic-optics with 'nonOverridableArguments' instead"  #-}

-- | Specifies configuration properties of a job notification.
--
-- /Note:/ Consider using 'notificationProperty' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjNotificationProperty :: Lens.Lens' CreateJob (Core.Maybe Types.NotificationProperty)
cjNotificationProperty = Lens.field @"notificationProperty"
{-# INLINEABLE cjNotificationProperty #-}
{-# DEPRECATED notificationProperty "Use generic-lens or generic-optics with 'notificationProperty' instead"  #-}

-- | The number of workers of a defined @workerType@ that are allocated when a job runs.
--
-- The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ . 
--
-- /Note:/ Consider using 'numberOfWorkers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjNumberOfWorkers :: Lens.Lens' CreateJob (Core.Maybe Core.Int)
cjNumberOfWorkers = Lens.field @"numberOfWorkers"
{-# INLINEABLE cjNumberOfWorkers #-}
{-# DEPRECATED numberOfWorkers "Use generic-lens or generic-optics with 'numberOfWorkers' instead"  #-}

-- | The name of the @SecurityConfiguration@ structure to be used with this job.
--
-- /Note:/ Consider using 'securityConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjSecurityConfiguration :: Lens.Lens' CreateJob (Core.Maybe Types.NameString)
cjSecurityConfiguration = Lens.field @"securityConfiguration"
{-# INLINEABLE cjSecurityConfiguration #-}
{-# DEPRECATED securityConfiguration "Use generic-lens or generic-optics with 'securityConfiguration' instead"  #-}

-- | The tags to use with this job. You may use tags to limit access to the job. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjTags :: Lens.Lens' CreateJob (Core.Maybe (Core.HashMap Types.TagKey Types.TagValue))
cjTags = Lens.field @"tags"
{-# INLINEABLE cjTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters @TIMEOUT@ status. The default is 2,880 minutes (48 hours).
--
-- /Note:/ Consider using 'timeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjTimeout :: Lens.Lens' CreateJob (Core.Maybe Core.Natural)
cjTimeout = Lens.field @"timeout"
{-# INLINEABLE cjTimeout #-}
{-# DEPRECATED timeout "Use generic-lens or generic-optics with 'timeout' instead"  #-}

-- | The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.
--
--
--     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.
--
--
--     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
--
--
--     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.
--
--
--
-- /Note:/ Consider using 'workerType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjWorkerType :: Lens.Lens' CreateJob (Core.Maybe Types.WorkerType)
cjWorkerType = Lens.field @"workerType"
{-# INLINEABLE cjWorkerType #-}
{-# DEPRECATED workerType "Use generic-lens or generic-optics with 'workerType' instead"  #-}

instance Core.ToQuery CreateJob where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CreateJob where
        toHeaders CreateJob{..}
          = Core.pure ("X-Amz-Target", "AWSGlue.CreateJob") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON CreateJob where
        toJSON CreateJob{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Name" Core..= name), Core.Just ("Role" Core..= role'),
                  Core.Just ("Command" Core..= command),
                  ("AllocatedCapacity" Core..=) Core.<$> allocatedCapacity,
                  ("Connections" Core..=) Core.<$> connections,
                  ("DefaultArguments" Core..=) Core.<$> defaultArguments,
                  ("Description" Core..=) Core.<$> description,
                  ("ExecutionProperty" Core..=) Core.<$> executionProperty,
                  ("GlueVersion" Core..=) Core.<$> glueVersion,
                  ("LogUri" Core..=) Core.<$> logUri,
                  ("MaxCapacity" Core..=) Core.<$> maxCapacity,
                  ("MaxRetries" Core..=) Core.<$> maxRetries,
                  ("NonOverridableArguments" Core..=) Core.<$>
                    nonOverridableArguments,
                  ("NotificationProperty" Core..=) Core.<$> notificationProperty,
                  ("NumberOfWorkers" Core..=) Core.<$> numberOfWorkers,
                  ("SecurityConfiguration" Core..=) Core.<$> securityConfiguration,
                  ("Tags" Core..=) Core.<$> tags,
                  ("Timeout" Core..=) Core.<$> timeout,
                  ("WorkerType" Core..=) Core.<$> workerType])

instance Core.AWSRequest CreateJob where
        type Rs CreateJob = CreateJobResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 CreateJobResponse' Core.<$>
                   (x Core..:? "Name") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { name :: Core.Maybe Types.Name
    -- ^ The unique name that was provided for this job definition.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateJobResponse' value with any optional fields omitted.
mkCreateJobResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CreateJobResponse
mkCreateJobResponse responseStatus
  = CreateJobResponse'{name = Core.Nothing, responseStatus}

-- | The unique name that was provided for this job definition.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjrrsName :: Lens.Lens' CreateJobResponse (Core.Maybe Types.Name)
cjrrsName = Lens.field @"name"
{-# INLINEABLE cjrrsName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cjrrsResponseStatus :: Lens.Lens' CreateJobResponse Core.Int
cjrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE cjrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
