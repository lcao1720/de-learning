- Uber: Docstore
	- CDC: change data capture
	- Docstore architecture
	- integrated cache
	-key takeaways
	> 1. **Docstore Challenges:** Uber's Docstore, a distributed MySQL-based database, faces challenges due to increasing demands from diverse business verticals and the complexities of microservices architectures, necessitating a focus on low latency and scalability.
    2. **Caching as a Solution:** Traditional disk-based storage databases encounter difficulties in achieving low-latency reads and scalability. The limitations of vertical and horizontal scaling led to the exploration of caching as a cost-efficient solution for handling varying workloads.  
    3. **Docstore Architecture:** Docstore is structured with a stateless query engine layer responsible for planning, routing, and sharding, and a stateful storage engine layer managing consensus, replication, and transactions. This architecture provides the foundation for addressing the identified challenges.
    4. **CacheFront Goals:** CacheFront is introduced to optimize resource allocation in Docstore, aiming to enhance latency, reduce costs, and replace custom caching solutions. The integrated caching approach is designed to be transparent, allowing flexibility based on consistency requirements.
    5. **CacheFront Implementation:** CacheFront's implementation includes strategies for cached reads, real-time cache invalidation using change data capture, negative caching to prevent unnecessary queries, and techniques such as sharding, circuit breakers, and adaptive timeouts for efficient cache management. The overall result is improved request latencies, reduced storage engine load, and successful scalability in the Uber Docstore ecosystem.

 Traditional disk-based storage databases encounter difficulties in achieving low-latency reads and scalability. 
 Uber's Docstore, the distributed MySQL-based database is structured with a stateless query engine layer responsible for planning, routing, and sharding; and a stateful storage engine layer managing consensus, replication, and transactions. 
 CacheFront is introduced to optimize resource allocation in Docstore. The overall result is improved request latencies, reduced storage engine load, and successful scalability in the Uber Docstore ecosystem.

